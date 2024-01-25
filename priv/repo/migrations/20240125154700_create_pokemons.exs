defmodule PokeBattle.Repo.Migrations.CreatePokemons do
  use Ecto.Migration

  def change do
    create table(:pokemons) do
      add :name, :string
      add :number, :integer

      timestamps(type: :utc_datetime)
    end

    create index(:pokemons, [:name])
    create index(:pokemons, [:number])

    alter table :participants do
      remove :pokemon, :string
      add :pokemon_id, references(:pokemons, on_delete: :restricted)
    end

    create index(:participants, [:pokemon_id])
  end
end
