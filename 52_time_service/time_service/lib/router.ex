defmodule TimeService.Router do
  use Plug.Router
  use Timex

  plug :match
  plug :dispatch

  get "/" do
    case Date.universal |> DateFormat.format("{ISO}") do
      { :ok, current_time } ->
        send_resp(conn, 200, Poison.encode!(%{time: current_time}))
      { :error, reason } ->
        send_resp(conn, 500, reason)
    end
  end

  match _ do
    send_resp(conn, 404, "Could not locate resource")
  end
end
