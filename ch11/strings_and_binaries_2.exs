defmodule MyString do
  def anagram?(word1, [head | tail]) do
    word1
    |> List.delete(head)
    |> anagram?(tail)
  end

  def anagram?([], _), do: true
  def anagram?(_, []), do: false
end
