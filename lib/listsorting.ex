defmodule Listsorting do
  @moduledoc """
  Documentation for Listsorting.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Listsorting.hello()
      :world

  """

  def hello do
    :world
  end

  def higher_prio?(val_a, val_b, step) do
    cond do
      val_a[:value] > val_b[:value] -> {true, val_a[:value], val_b[:value], step}
      val_a[:value] == val_b[:value] and val_a[:key] == "pre" -> {true, val_a[:value], val_b[:value], step}
      val_a[:value] == val_b[:value] and val_b[:key] == "post" -> {true, val_a[:value], val_b[:value], step}
      val_a[:value] == val_b[:value] and val_a[:key] == val_b[:key] -> {:same, val_a[:value], val_b[:value], step}
      val_a[:value] == val_b[:value] and val_b[:key] == "pre" -> {false, val_b[:value], val_a[:value], step}
      val_a[:value] == val_b[:value] and val_a[:key] == "post" -> {false, val_b[:value], val_a[:value], step}
      val_a[:value] < val_b[:value] -> {false, val_b[:value], val_a[:value], step}
      true -> {:error, val_b[:value], val_a[:value], step}
    end
  end



  def mapcompare(list) do
    [first | rest] = list
    mapcompare(rest, [first])
  end


  def mapcompare([mapa,mapb | tail], acc) do

    with {true, _higher, _lower, 1} <- higher_prio?(mapa, mapb, 1),   # compare 1st map to 2nd map. true if 1st map higher prioritiy, the number at the end is the indicator to identify at which step when result wasnt true
         {[first | _rest], 2} <- {([first | _rest] = acc) , 2},       # to identify first map in accumulator list. when accumulator is empty [],will fail and then proceed to catch all result. if successful, proceed next step
         {true, _high, _low, 3} <- higher_prio?(mapb, first, 3)       # compare
    do
      mapcompare([mapa | tail], [mapb | acc])
    else
      {false , _ , _ , 1} -> mapcompare([mapb | tail], [mapa | acc])  # 1st and 2nd map switch place when 1st is smaller
      {:same , _ , _ , 1} -> mapcompare([mapa | tail], [mapb | acc])  # just in case theres exact same prio, the one that appear first is higher prio
      {false , _ , _ , 3} -> mapcompare([mapa | tail], mapcompare([mapb|acc]))
      _ -> mapcompare([mapa | tail], [mapb | acc])
    end
  end

  def mapcompare([mapa], acc) do
    [mapa | acc]
  end

end
