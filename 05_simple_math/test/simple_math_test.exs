defmodule SimpleMathTest do
  use ExUnit.Case
  doctest SimpleMath

  test "add" do
    assert SimpleMath.add(10, 10) == 20
  end

  test "subtract" do
    assert SimpleMath.subtract(20, 10) == 10
  end

  test "multiply" do
    assert SimpleMath.multiply(10, 10) == 100
  end

  test "divide" do
    assert SimpleMath.divide(100, 10) == 10
  end
end
