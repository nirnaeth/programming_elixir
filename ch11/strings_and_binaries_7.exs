defmodule Taxes do
  @tax_rates [ NC: 0.075, TX: 0.08 ]

  def calculate_total(orders) do
    for [id: id, ship_to: place, net_amount: net] <- orders do
      [id: id, ship_to: place, net_amount: net, total_amount: _apply_tax(net, @tax_rates[place], place)]
    end
  end

  defp _apply_tax(net_amount, tax, :NC) do
    (net_amount * tax) + net_amount
  end
  defp _apply_tax(net_amount, tax, :TX) do
    (net_amount * tax) + net_amount
  end
  defp _apply_tax(net_amount, _, _) do
    net_amount
  end
end

defmodule Orders do
  def parse_orders do
    case File.open('ch11/orders.csv', [:read]) do
      {:ok, file} -> _read_content(file)
      {:error, reason} -> reason
    end
  end

  defp _read_content(file) do
    headers = _extract_headers(file)

    Enum.map IO.stream(file, :line), &_extract_order(&1, headers)
  end

  defp _convert([id, ":" <> city, net_amount]) do
    [
      String.to_integer(id),
      String.to_atom(city),
      String.to_float(net_amount)
    ]
  end

  defp _extract_headers(file) do
    IO.read(file, :line)
      |> String.strip
      |> String.split(",")
      |> Enum.map(&String.to_atom(&1))
  end

  defp _extract_order(line, headers) do
    order = line
      |> String.strip
      |> String.split(",")
      |> _convert

    Enum.zip(headers, order)
  end
end
