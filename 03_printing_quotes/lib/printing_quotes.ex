defmodule PrintingQuotes do
  def print_quote do
    quote = IO.gets("What is the quote? ") |> String.strip
    author = IO.gets("Who said it? ") |> String.strip
    IO.puts(author <> " says, \"" <> quote <> "\"")
  end
end
