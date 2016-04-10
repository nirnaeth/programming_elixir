defmodule Operations do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end
