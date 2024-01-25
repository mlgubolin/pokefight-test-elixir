defmodule PokeBattle.Repo.Migrations.CreateParticipants do
  use Ecto.Migration

  def change do
    create table(:participants) do
      add :pokemon, :string
      add :outcome, :string
      add :battle_id, references(:battles, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:participants, [:battle_id])
  end
end
