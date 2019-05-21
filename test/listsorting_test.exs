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
end
