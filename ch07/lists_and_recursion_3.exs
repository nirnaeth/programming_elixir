defmodule Operations do
  def caesar([], _), do: []
  def caesar([head | tail], n), do: [_wrap(head + n) | caesar(tail, n)]

  # ascii for a = 97, who remembered...
  # https://forums.pragprog.com/forums/322/topics/11932
  defp _wrap(char), do: 97 + rem(char - 97, 26)
end
