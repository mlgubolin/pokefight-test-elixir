defmodule PokeBattle.Repo.Migrations.CreateBattles do
  use Ecto.Migration

  def change do
    create table(:battles) do

      timestamps(type: :utc_datetime)
    end
  end
end
