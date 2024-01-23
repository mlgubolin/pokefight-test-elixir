defmodule PokeApi.PokeAPI.Pokemon do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pokemons" do
    field :name, :string

    has_many :participants, PokeApi.PokeAPI.Participant

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pokemon, attrs) do
    pokemon
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
