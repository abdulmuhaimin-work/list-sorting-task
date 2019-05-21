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

  def mapcompare([mapa,mapb | tail]) do
    if mapb[:value] > mapa[:value] do
      [mapb,mapa | tail]
      else [mapa,mapb | tail]
    end
  end

end
