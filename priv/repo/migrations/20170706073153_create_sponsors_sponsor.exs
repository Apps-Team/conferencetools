defmodule EventsTools.Repo.Migrations.CreateEventsTools.Sponsors.Sponsor do
  use Ecto.Migration

  def change do
    create table(:sponsors) do
      add :name, :string

      timestamps()
    end

  end
end
