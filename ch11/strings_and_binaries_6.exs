defmodule MyString do
  def capitalize_sentences(<< head :: utf8, tail :: binary >>) do
    tail
    |> String.downcase
    |> do_capitalize_sentences(String.capitalize(<<head>>))
  end

  defp do_capitalize_sentences("", new_string), do: new_string

  defp do_capitalize_sentences(<< ". ", tail :: binary >>, new_string) do
    tail
    |> String.capitalize
    |> do_capitalize_sentences(Enum.join([new_string, ". "], ""))
  end

  defp do_capitalize_sentences(<< head :: utf8, tail :: binary >>, new_string) do
    do_capitalize_sentences(tail, Enum.join([new_string, <<head>>], ""))
  end
end
