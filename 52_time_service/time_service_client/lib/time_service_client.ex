defmodule TimeServiceClient do
  use Timex

  def get_time do
    case HTTPoison.get("http://localhost:4000") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        print_time(body)
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Could not find resource"
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end
  end

  defp print_time(response_body) do
    response_map = Poison.Parser.parse!(response_body)

    case response_map["time"] |> DateFormat.parse("{ISO}") do
      {:ok, date} ->
        formatted_date = DateFormat.format!(date, "{h24}:{m}:{s} {Zname} {Mfull} {D} {YYYY}")
        IO.puts "The current time is #{formatted_date}."
      {:error, reason} ->
        IO.inspect reason
    end
  end
end
