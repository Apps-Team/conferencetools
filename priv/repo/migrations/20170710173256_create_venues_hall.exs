defmodule EventsTools.Repo.Migrations.CreateEventsTools.Venues.Hall do
  use Ecto.Migration

  def change do
    create table(:halls) do
      add :name, :string

      timestamps()
    end

  end
end
