defmodule PokeBattle.Battles do

    def create_battle(pokemons) do
      case validate_pokemons(pokemons) do
        :error ->
          :error
        pokemons = [_|_] ->


      end
      # battle = %Battle{}

      # Repo.transaction(fn ->
      #   Repo.insert(battle)
      #   params = %{outcome: :win, pokemon_id: 1, battle_id: battle.id}
      #   params
      #   |> Participant.changeset()
      #   |> Repo.insert()
      # end)
    end

    @spec validate_pokemons([String.t(), ...]) :: list() | :error
    defp validate_pokemons(pokemons) do
      Enum.reduce_while(pokemons, [], fn pokemon, acc ->
        case ApiHandler.api_call(pokemon) do
          {:ok, result} ->
            {:cont, [result | acc] }
          {:error, _} ->
            {:halt, :error}
        end
      end)
    end
end
