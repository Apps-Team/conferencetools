defmodule EventsTools.Repo.Migrations.CreateEventsTools.Venues.Hall_Room_Plan do
  use Ecto.Migration

  def change do
    create table(:hall_room_plans) do
      add :name, :string

      timestamps()
    end

  end
end
