defmodule PokeBattleWeb.BattleController do
  use PokeBattleWeb, :controller
  alias PokeBattle.Handlers.BattleHandler
  def show(conn, _params) do
conn
  end

  def index(conn, params) do
    IO.inspect(conn)
    IO.inspect(params)
    conn
  end

  @spec create(Plug.Conn.t(), nil | maybe_improper_list() | map()) :: Plug.Conn.t()
  def create(conn, params) do
    BattleHandler.create_battle(params["pokemons"])
    conn
  |> put_resp_content_type("text/plain")
  |> send_resp(201, "")

  end
end
