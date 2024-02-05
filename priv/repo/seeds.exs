# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PokeBattle.Repo.insert!(%PokeBattle.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

pkmns = [
  %{name: "bulbasaur", number: 1},
  %{name: "ivysaur", number: 2},
  %{name: "venusaur", number: 3},
  %{name: "charmander", number: 4},
  %{name: "charmeleon", number: 5},
  %{name: "charizard", number: 6},
  %{name: "squirtle", number: 7},
  %{name: "wartortle", number: 8},
  %{name: "blastoise", number: 9},
]

PokeBattle.Repo.insert_all(PokeBattle.Pokemon, pokmns)
