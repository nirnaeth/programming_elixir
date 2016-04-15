defmodule MyList do
  def all?(collection, fun) do
    do_all?(collection, fun)
  end

  defp do_all?([], _), do: true
  defp do_all?([head | tail], fun) do
    if fun.(head) do
      do_all?(tail, fun)
    else
      false
    end
  end

  def each(collection, fun) do
    do_each(collection, fun)
  end

  defp do_each([], _), do: :ok
  defp do_each([head | tail], fun) do
    fun.(head)
    do_each(tail, fun)
  end

  def filter(collection, fun) do
    do_filter(collection, [], fun)
  end

  defp do_filter([], result, _), do: result
  defp do_filter([head | tail], result, fun) do
    if fun.(head) do
      do_filter(tail, result ++ [head], fun)
    else
      do_filter(tail, result, fun)
    end
  end

  def split(collection, 0), do: {[], collection}
  def split([head | tail], count) when count > 0 do
    do_split([head], tail, count - 1)
  end
  def split([head | tail], count) when count < 0 do
    do_split([head], tail, length(tail) - abs(count))
  end

  defp do_split(part_1, part_2, 0), do: {part_1, part_2}
  defp do_split(part_1, part_2, _) when part_2 == [], do: {part_1, part_2}
  defp do_split(part_1, [head | tail], count) do
    do_split(part_1 ++ [head], tail, count - 1)
  end
end
