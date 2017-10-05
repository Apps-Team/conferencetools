defmodule EventsTools.Repo.Migrations.CreateEventsTools.Presentations.Presentation do
  use Ecto.Migration

  def change do
    create table(:presentations) do
      add :title, :string
      add :summary, :text
      add :slides, :string

      timestamps()
    end

  end
end
