list_concat = fn (a, b) -> a ++ b end
# iex(2)> list_concat.([:a, :b], [:c, :d])
# [:a, :b, :c, :d]

sum = fn (a, b, c) -> a + b + c end
#iex(4)> sum.(1, 2, 3)
#6

pair_tuple_to_list = fn {a, b} -> [a, b] end
#iex(7)> pair_tuple_to_list.({1234, 5678})
#[1234, 5678]
