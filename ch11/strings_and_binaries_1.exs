defmodule MyString do
  def printable_ascii?([head | []]) when head in 32..255, do: true
  def printable_ascii?([head | tail]) when head in 32..255, do: ascii?(tail)
  def printable_ascii?(_), do: false
end
