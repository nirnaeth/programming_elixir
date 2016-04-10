defmodule Chop do
  def guess(actual, min..max) when actual > 0 do
    attempt = div(min + max, 2)

    IO.puts "Is it #{attempt}"

    _verify(actual, attempt)
  end


end
