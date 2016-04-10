defmodule Chop do
  def guess(actual, n, min..max) when actual > div(min + max, 2) do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    guess(actual, attempt, attempt..max)
  end

  def guess(actual, n, min..max) when actual < div(min + max, 2) do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    guess(actual, attempt, min..attempt)
  end

  def guess(actual, n, min..max), do: IO.puts actual

  def guess(actual, min..max) when actual > 0 do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    guess(actual, attempt, min..attempt)
  end
end
