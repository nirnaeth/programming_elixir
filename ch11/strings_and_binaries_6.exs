defmodule MyString do
  def capitalize_sentences(string) do
    string
    |> String.split(~r/\. /)
    |> Enum.map(&(String.capitalize(&1)))
    |> Enum.join(". ")
  end
end
