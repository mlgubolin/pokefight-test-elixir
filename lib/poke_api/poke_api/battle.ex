defmodule PokeApi.PokeAPI.Battle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "battles" do

    field :participant_id, :id

    has_many :participants, PokeApi.PokeAPI.Participant

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(battle, attrs) do
    battle
    |> cast(attrs, [])
    |> validate_required([])
  end
end
