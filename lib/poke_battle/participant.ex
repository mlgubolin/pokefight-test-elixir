defmodule PokeBattle.Participant do
  use Ecto.Schema
  import Ecto.Changeset

  schema "participants" do
    field :outcome, Ecto.Enum, values: [:win, :lose, :draw]

    belongs_to :pokemon, PokeBattle.Pokemon
    belongs_to :battle, PokeBattle.Battle
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(participant, attrs) do
    participant
    |> cast(attrs, [:pokemon, :outcome])
    |> validate_required([:pokemon, :outcome])
  end
end
