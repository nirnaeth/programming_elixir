defmodule FizzBuzz do
  def run(n) do
    case {rem(n, 3), rem(n, 5), n} do
      {0, 0, _} -> IO.puts "FizzBuzz"
      {0, _, _} -> IO.puts "Fizz"
      {_, 0, _} -> IO.puts "Buzz"
      _         -> IO.puts n
    end
  end
end

FizzBuzz.run(10)
FizzBuzz.run(11)
FizzBuzz.run(12)
FizzBuzz.run(13)
FizzBuzz.run(14)
FizzBuzz.run(15)
FizzBuzz.run(16)

# iex(70)> c "ch12/control_flow_1.exs"
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
# [FizzBuzz]
