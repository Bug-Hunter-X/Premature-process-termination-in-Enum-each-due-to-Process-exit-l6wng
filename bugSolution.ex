```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      raise "Element 3 encountered"
    end
    IO.puts(x)
  end)
rescue
  e -> IO.puts("Exception caught: #{inspect(e)}")
end
```