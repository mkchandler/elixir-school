defmodule TimeService.Starter do
  def start_link() do
    {:ok, _} = Plug.Adapters.Cowboy.http TimeService.Router, []
  end
end
