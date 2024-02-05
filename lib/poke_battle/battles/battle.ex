defmodule PokeBattle.Battle.Battle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "battles" do

    has_many :participants, PokeBattle.Battle.Participant
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(battle, attrs) do
    battle
    |> cast(attrs, [])
    |> validate_required([])
  end
end
