defmodule PokeApi.Repo.Migrations.CreateBattles do
  use Ecto.Migration

  def change do
    create table(:battles) do
      add :participant_id, references(:participant, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:battles, [:participant_id])
  end
end
