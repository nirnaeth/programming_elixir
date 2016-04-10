defmodule Operations do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  # iex(11)> Operations.mapsum([1, 2], &(&1 * 2))
  # 6
  def mapsum(list, fun), do: _mapsum(list, 0, fun)

  defp _mapsum([], total, _), do: total
  defp _mapsum([head | tail], total, fun) do
    _mapsum(tail, fun.(head) + total, fun)
  end
end
