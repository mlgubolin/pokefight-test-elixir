defmodule PokeBattle.Pokemons.Pokemon do
use Ecto.Schema
  import Ecto.Changeset

  schema "pokemons" do
    field :name, :string
    field :number, :integer

    has_many :participants, PokeBattle.Battle.Participant
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pokemon, attrs) do
    pokemon
    |> cast(attrs, [])
    |> validate_required([])
  end
end
