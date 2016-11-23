defmodule SimpleMath do
  def run do
    first_input = IO.gets("What is the first number? ") |> String.strip
    second_input = IO.gets("What is the second number? ") |> String.strip

    first_num = String.to_integer(first_input)
    second_num = String.to_integer(second_input)

    sum = first_num + second_num
    difference = first_num - second_num 
    product = first_num * second_num 
    quotient = first_num / second_num 

    IO.puts("#{first_input} + #{second_input} = #{sum}\n" <>
            "#{first_input} - #{second_input} = #{difference}\n" <>
            "#{first_input} * #{second_input} = #{product}\n" <>
            "#{first_input} / #{second_input} = #{quotient}")
  end
end
