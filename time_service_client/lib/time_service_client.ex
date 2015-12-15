defmodule TimeServiceClient do
  use Application

  def get_time do
    case HTTPoison.get("http://localhost:4000") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Could not find resource"
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end
  end
end
