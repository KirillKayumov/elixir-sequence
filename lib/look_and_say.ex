defmodule LookAndSay do
  @moduledoc """
    Implements popular Look and Say problem using Elixir way
  """

  @doc """
    ## Examples:

    iex> LookAndSay.next([])
    []

    iex> LookAndSay.next([2])
    [1, 2]

    iex> LookAndSay.next([1, 2])
    [1, 1, 1, 2]

    iex> LookAndSay.next([1, 1, 1, 2])
    [3, 1, 1, 2]

    iex> LookAndSay.next([3, 1, 1, 2])
    [1, 3, 2, 1, 1, 2]

  """
  def next([]) do
    []
  end

  def next([head | []]) do
    [1, head]
  end

  def next([head | tail]) do
    next(1, head, tail)
  end

  def next(count, char, [char | tail]) do
    next(count + 1, char, tail)
  end

  def next(count, char, [head | tail]) do
    [count, char] ++ next([head | tail])
  end
end
