defmodule PokeApi.Repo.Migrations.CreateParticipants do
  use Ecto.Migration

  def change do
    create table(:participants) do
      add :outcome, :string
      add :pokemon_id, references(:pokemons, on_delete: :nothing)
      add :battle_id, references(:battles, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:participants, [:pokemon_id])
    create index(:participants, [:battle_id])
  end
end
