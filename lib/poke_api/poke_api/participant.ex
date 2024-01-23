defmodule PokeApi.PokeAPI.Participant do
  use Ecto.Schema
  import Ecto.Changeset

  schema "participants" do
    field :outcome, Ecto.Enum, values: [:win, :lose, :draw]
    field :pokemon_id, :id
    field :battle_id, :id

    has_many :battle, PokeApi.PokeAPI.Battle
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(participant, attrs) do
    participant
    |> cast(attrs, [:outcome])
    |> validate_required([:outcome])
  end
end
