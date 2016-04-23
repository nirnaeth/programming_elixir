defmodule MyString do
  def center([head | []], justification) do
    print_only_utf8(head, justification)
  end

  def center([head | tail], justification) do
    print_only_utf8(head, justification)

    center(tail, justification)
  end

  def center([head | tail]) do
    current_max = String.length(head)
    justification = calculate_justification(tail, current_max)

    print_only_utf8(head, justification)

    center(tail, justification)
  end

  defp calculate_justification([head | []], longest) do
    current = String.length(head)
    if current >= longest do
      current
    else
      longest
    end
  end

  defp calculate_justification([head | tail], longest) do
    current = String.length(head)
    if current >= longest do
      calculate_justification(tail, current)
    else
      calculate_justification(tail, longest)
    end
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
