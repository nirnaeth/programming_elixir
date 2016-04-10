fizzbuzz = fn
  {0, 0, _} -> IO.puts "FizzBuzz"
  {0, _, _} -> IO.puts "Fizz"
  {_, 0, _} -> IO.puts "Buzz"
  {_, _, c} -> IO.puts c
end

wat = fn n -> fizzbuzz.({rem(n, 3), rem(n, 5), n}) end

wat.(10)
wat.(11)
wat.(12)
wat.(13)
wat.(14)
wat.(15)
wat.(16)

#iex(6)> c "~/projects/elixir/chapter_5/functions_3.exs"
#Buzz
#11
#Fizz
#13
#14
#FizzBuzz
#16
