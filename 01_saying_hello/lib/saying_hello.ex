defmodule SayingHello do
  def say_hello do
    name = IO.gets("What is your name? ") 
           |> String.strip
    message = "Hello, #{name}, nice to meet you!"
    IO.puts(message);
  end
end
