defmodule Chop do
  def verify(actual, n, min..max) when actual < div(min + max, 2) do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    verify(actual, attempt, min..attempt)
  end

  def verify(actual, n, min..max) when actual > div(min + max, 2) do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    verify(actual, attempt, attempt..max)
  end

  def verify(actual, n, min..max), do: IO.puts actual

  def guess(actual, min..max) when actual > 0 do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    verify(actual, attempt, min..max)
  end
end
