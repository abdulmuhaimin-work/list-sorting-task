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

  def mapcompare(list) do
    mapcompare(list, [])
  end

  def mapcompare([mapa,mapb | tail], acc) do
    if mapb[:value] > mapa[:value] do
      mapcompare([mapa | tail], acc ++ [mapb])
      else mapcompare([mapb | tail], acc ++ [mapa])
    end
  end

  def mapcompare([mapa], acc) do
    acc ++ [mapa]
  end


end
