defmodule PokeBattleWeb.BattleController do
  use PokeBattleWeb, :controller
  alias PokeBattle.Battles
  def show(conn, _params) do
conn
  end

  def index(conn, params) do
    IO.inspect(conn)
    IO.inspect(params)
    conn
  end


  def create(conn, params) do
    Battles.create_battle(params["pokemons"])
    conn
  end
end
