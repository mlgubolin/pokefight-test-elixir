defmodule PokeBattle.Pokemons do
  import Ecto.Query
  alias PokeBattle.Pokemons.Pokemon
  alias PokeBattle.Repo

  def fetch_pokemons_by_name(name) do

  end

  defp get_pokemons_by_name_from_db(names) do
    Pokemon
      |> where([p], p.name in ^names)
      |> Repo.all()
  end
end
