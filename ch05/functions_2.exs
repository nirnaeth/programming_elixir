fizzbuzz = fn
  {0, 0, _} -> IO.puts "FizzBuzz"
  {0, _, _} -> IO.puts "Fizz"
  {_, 0, _} -> IO.puts "Buzz"
  {_, _, c} -> IO.puts c
end

fizzbuzz.({0, 0, 0})
fizzbuzz.({0, 1, 0})
fizzbuzz.({1, 0, 0})
fizzbuzz.({1, 1, "pippo"})

#iex(5)> c "~/projects/elixir/chapter_5/functions_2.exs"
#FizzBuzz
#Fizz
#Buzz
#pippo
