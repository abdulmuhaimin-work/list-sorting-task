defmodule ListsortingTest do
  use ExUnit.Case
  doctest Listsorting

  test "3 different value maplist sort" do
    maplist =
    [
      %{id: 1, value: 2, key: "action"},
      %{id: 2, value: 4, key: "pre"},
      %{id: 3, value: 1, key: "post"}
    ]

    assert Listsorting.mapcompare(maplist) ==
    [
      %{id: 2, value: 4, key: "pre"},
      %{id: 1, value: 2, key: "action"},
      %{id: 3, value: 1, key: "post"}
    ]
  end

  test "5 different value maplist sort" do
    maplist =
    [
      %{id: 4, value: 2, key: "action"},
      %{id: 3, value: 3, key: "action"},
      %{id: 1, value: 5, key: "action"},
      %{id: 2, value: 4, key: "pre"},
      %{id: 5, value: 1, key: "post"}
    ]

    assert Listsorting.mapcompare(maplist) ==
    [
      %{id: 1, value: 5, key: "action"},
      %{id: 2, value: 4, key: "pre"},
      %{id: 3, value: 3, key: "action"},
      %{id: 4, value: 2, key: "action"},
      %{id: 5, value: 1, key: "post"}
    ]
  end


  test "10 maplist sort" do
    maplist =
    [
      %{id: 1, value: 2, key: "action"},
      %{id: 8, value: 4, key: "action"},
      %{id: 3, value: 6, key: "post"},
      %{id: 4, value: 6, key: "action"},
      %{id: 5, value: 4, key: "action"},
      %{id: 6, value: 7, key: "post"},
      %{id: 7, value: 2, key: "pre"},
      %{id: 2, value: 4, key: "pre"},
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
        %{id: 8, value: 4, key: "action"},
        %{id: 5, value: 4, key: "action"},
        %{id: 7, value: 2, key: "pre"},
        %{id: 1, value: 2, key: "action"},

      ]
  end
end
