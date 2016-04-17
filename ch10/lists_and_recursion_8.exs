tax_rates = [ NC: 0.075, TX: 0.08 ]

orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount:  35.50 ],
  [ id: 125, ship_to: :TX, net_amount:  24.00 ],
  [ id: 126, ship_to: :TX, net_amount:  44.80 ],
  [ id: 127, ship_to: :NC, net_amount:  25.00 ],
  [ id: 128, ship_to: :MA, net_amount:  10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 130, ship_to: :NC, net_amount:  50.00 ] ]

defmodule Taxes do
  def calculate_total(orders, tax_rates) do
    for [id: id, ship_to: place, net_amount: net] <- orders do
      [id: id, ship_to: place, net_amount: net, total_amount: _apply_tax(net, tax_rates[place], place)]
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
