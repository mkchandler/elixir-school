defmodule SimpleMath do
  def run do
    first_num = IO.gets("What is the first number? ") 
                |> String.strip
                |> String.to_integer

    second_num = IO.gets("What is the second number? ") 
                 |> String.strip
                 |> String.to_integer

    sum = add(first_num, second_num)
    difference = subtract(first_num, second_num) 
    product = multiply(first_num, second_num) 
    quotient = divide(first_num, second_num) 

    IO.puts("#{first_num} + #{second_num} = #{sum}\n" <>
            "#{first_num} - #{second_num} = #{difference}\n" <>
            "#{first_num} * #{second_num} = #{product}\n" <>
            "#{first_num} / #{second_num} = #{quotient}")
  end

  def add(first_num, second_num) when is_number(first_num) and is_number(second_num) do
    first_num + second_num
  end

  def subtract(first_num, second_num) when is_number(first_num) and is_number(second_num) do
    first_num - second_num
  end

  def multiply(first_num, second_num) when is_number(first_num) and is_number(second_num) do
    first_num * second_num
  end

  def divide(first_num, second_num) when is_number(first_num) and is_number(second_num) and second_num != 0 do
    first_num / second_num
  end
end

