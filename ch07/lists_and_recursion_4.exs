defmodule Operations do
  def span(to, to), do: [to | []]
  def span(from, to) when from < to, do: [from | span(from + 1, to)]
end
