# Convert a float to a string with two decimal digits
# float_to_binary(7.12, [{decimals, 4}]).

:erlang.float_to_binary(2.10, [{:decimals, 2}])

# Value of an operating-system environment variable
System.get_env() # list of all system variables
System.get_env("TERM_PROGRAM") # single variable

# Extension component of a file name
Path.extname("ch06/modules_and_functions_7.exs")

# Process' current working directory
System.cwd()

# Convert a string containing JSON into Elixir data structure
# https://github.com/devinus/poison
# https://github.com/cblage/elixir-json

# Execute a command in your operating system's shell
System.cmd "echo", ["hi"]
# http://elixir-lang.org/docs/stable/elixir/System.html#cmd/3
# iex(3)> System.cmd "echo", ["hi"]
# {"hi\n", 0}

