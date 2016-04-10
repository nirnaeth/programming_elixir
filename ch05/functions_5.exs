Enum.map [1, 2, 3, 4], fn x -> x + 2 end
Enum.map [1, 2, 3, 4], &(&1 + 2)

# iex(10)> Enum.map [1, 2, 3, 4], fn x -> x + 2 end
# [3, 4, 5, 6]
# iex(11)> Enum.map [1, 2, 3, 4], &(&1 + 2)
# [3, 4, 5, 6]

Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end
Enum.each [1, 2, 3, 4], &IO.inspect/1

# iex(12)> Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end
# 1
# 2
# 3
# 4
# :ok
# iex(13)> Enum.each [1, 2, 3, 4], &IO.inspect/1
# 1
# 2
# 3
# 4
# :ok
