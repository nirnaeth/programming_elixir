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
end
