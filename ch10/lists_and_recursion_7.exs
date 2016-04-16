defmodule Operations do
  def span(to, to), do: [to | []]
  def span(from, to) when from < to, do: [from | span(from + 1, to)]

  def primes_up_to(n) do
    for x <- span(2, n), _is_prime?(x), do: x
  end

  # https://forums.pragprog.com/forums/322/topics/11937
  # Rebecca Skinner's solution
  defp _is_prime?(2), do: true
  defp _is_prime?(n) do
    Enum.all?(span(2, num - 1), &(rem(n, &1) != 0))
  end
end
