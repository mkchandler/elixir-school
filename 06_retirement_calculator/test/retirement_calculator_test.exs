defmodule RetirementCalculatorTest do
  use ExUnit.Case
  doctest RetirementCalculator

  test "calculate years until retirement" do
    assert RetirementCalculator.years_until_retirement(20, 60) == 40
  end

  test "calculate years until retirement when already past age" do
    assert RetirementCalculator.years_until_retirement(70, 60) == -10
  end

  test "calculate year of retirement" do
    assert RetirementCalculator.year_of_retirement(2016, 20) == 2036
  end

  test "display message before retirement only 1 year" do
    assert RetirementCalculator.display_message(1, 2016, 2017) ==
      "You have 1 year left until you can retire.\n" <>
      "It's 2016, so you can retire in 2017."
  end

  test "display message before retirement" do
    assert RetirementCalculator.display_message(2, 2016, 2018) ==
      "You have 2 years left until you can retire.\n" <>
      "It's 2016, so you can retire in 2018."
  end
end
