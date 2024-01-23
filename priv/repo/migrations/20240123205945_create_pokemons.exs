defmodule PokeApi.Repo.Migrations.CreatePokemons do
  use Ecto.Migration

  def change do
    create table(:pokemons) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
