defmodule MyString do
  def center([head | []], justification) do
    print_only_utf8(head, justification)
  end

  def center([head | tail], justification) do
    print_only_utf8(head, justification)

    center(tail, justification)
  end

  def center(words_list) do
    max = words_list
    |> Enum.max_by(&String.length(&1))
    |> String.length

    center(words_list, max)
  end

  defp print_only_utf8(string, justification) do
    if String.printable?(string) do
      IO.puts(padding(string, justification))
    end
  end

  defp padding(string, justification) do
    current = String.length(string)
    String.rjust(string, div(justification + current, 2))
  end
end
