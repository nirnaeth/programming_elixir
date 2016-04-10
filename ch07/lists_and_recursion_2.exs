defmodule Operations do
  # https://forums.pragprog.com/forums/322/topics/11931
  def max([head | tail]), do: _max(head, tail)

  defp _max(attempt, []), do: attempt
  defp _max(attempt, [head | tail]) when attempt > head, do: _max(attempt, tail)
  defp _max(attempt, [head | tail]) when attempt <= head, do: _max(head, tail)
end
