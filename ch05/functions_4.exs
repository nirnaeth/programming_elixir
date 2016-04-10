prefix = fn a -> (fn n -> "#{a} #{n}" end) end

mrs = prefix.("Mrs.")

IO.puts mrs.("Smith")

# iex(9)> c "chapter_5/functions_4.exs"
# Mrs. Smith
