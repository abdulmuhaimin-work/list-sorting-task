defmodule ListsortingTest do
  use ExUnit.Case
  doctest Listsorting

  test "greets the world" do
    assert Listsorting.hello() == :world
  end

  test "3 maplist sort" do
    maplist =
    [
      %{id: 1, value: 2, key: "action"},
      %{id: 2, value: 4, key: "pre"},
      %{id: 3, value: 2, key: "post"}
    ]

    assert Listsorting.mapcompare(maplist) ==
    [
      %{id: 2, value: 4, key: "pre"},
      %{id: 1, value: 2, key: "action"},
      %{id: 3, value: 2, key: "post"}
    ]
  end

  test "10 maplist sort" do
    maplist =
    [
      %{id: 1, value: 2, key: "action"},
      %{id: 2, value: 4, key: "pre"},
      %{id: 3, value: 6, key: "post"},
      %{id: 4, value: 6, key: "action"},
      %{id: 5, value: 4, key: "action"},
      %{id: 6, value: 7, key: "post"},
      %{id: 7, value: 2, key: "pre"},
      %{id: 8, value: 4, key: "post"},
      %{id: 9, value: 5, key: "post"},
      %{id: 10, value: 7, key: "action"}
    ]

    assert Listsorting.mapcompare(maplist) ==
      [
        %{id: 10, value: 7, key: "action"},
        %{id: 6, value: 7, key: "post"},
        %{id: 4, value: 6, key: "action"},
        %{id: 3, value: 6, key: "post"},
        %{id: 9, value: 5, key: "post"},
        %{id: 2, value: 4, key: "pre"},
        %{id: 5, value: 4, key: "action"},
        %{id: 8, value: 4, key: "post"},
        %{id: 7, value: 2, key: "pre"},
        %{id: 1, value: 2, key: "action"},

      ]
  end
end
