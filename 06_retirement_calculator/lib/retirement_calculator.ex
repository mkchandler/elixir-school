defmodule RetirementCalculator do
  def run do
    current_age = IO.gets("What is your current age? ") 
                  |> String.strip 
                  |> String.to_integer
    retirement_age = IO.gets("What age would you like to retire? ") 
                     |> String.strip 
                     |> String.to_integer

    years = years_until_retirement(current_age, retirement_age)
    current_year = DateTime.utc_now.year
    year = year_of_retirement(current_year, years)

    display_message(years, current_year, year)
    |> IO.puts
  end

  def display_message(years, current_year, year) when years > 1 do
    "You have #{years} years left until you can retire.\n" <>
    "It's #{current_year}, so you can retire in #{year}."
  end

  def display_message(years, current_year, year) when years == 1 do
    "You have #{years} year left until you can retire.\n" <>
    "It's #{current_year}, so you can retire in #{year}."
  end

  def display_message(_, _, _) do
    IO.puts("You are ready to retire now!")
  end

  def years_until_retirement(current_age, retirement_age) do
    retirement_age - current_age
  end

  def year_of_retirement(current_year, years_until_retirement) do
    current_year + years_until_retirement
  end
end
