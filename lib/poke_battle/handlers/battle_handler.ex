defmodule PokeBattle.Handlers.BattleHandler do
  alias PokeBattle.Battle
  alias PokeBattle.Participant

  def create_battle(pokemons) do
    # Enum.map(pokemons, fn p -> PokeBattle.Handlers.PokemonHandler.handle_pokemon(p) end)
    # battle = %Battle{}

    # Repo.transaction(fn ->
    #   Repo.insert(battle)
    #   params = %{outcome: :win, pokemon_id: 1, battle_id: battle.id}
    #   params
    #   |> Participant.changeset()
    #   |> Repo.insert()
    # end)
  end

end
