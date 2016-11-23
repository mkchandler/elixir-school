defmodule CountingNumberCharacters do
  def count_chars do
    chars = IO.gets("What is the input string? ")
            |> String.strip
    chars_length = String.length(chars)
    IO.puts("#{chars} has #{chars_length} characters.")
  end
end
