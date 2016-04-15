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
end
