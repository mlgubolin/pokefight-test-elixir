defmodule PokeApi.Tesla.Tesla do
  use Tesla, only: [:get], docs: false

  plug Tesla.Middleware.BaseUrl, "http://api.example.com"
  plug Tesla.Middleware.JSON

  def fetch_data do
    get("/data")
  end
end
