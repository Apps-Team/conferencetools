defmodule EventsTools.Venues.Room do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Venues.Room


  schema "rooms" do
    field :name, :string
    belongs_to :hall, EventsTools.Venues.Hall  # this was added
    belongs_to :hall_room_plan, EventsTools.Venues.Hall_Room_Plan  # this was added

    timestamps()
  end

  @doc false
  def changeset(%Room{} = room, attrs) do
    room
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
