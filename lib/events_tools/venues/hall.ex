defmodule EventsTools.Venues.Hall do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Venues.Hall


  schema "halls" do
    field :name, :string
    belongs_to :building, EventsTools.Venues.Building  # this was added
    has_many :hall_room_plans, EventsTools.Venues.Hall_Room_Plan  # this was added
    has_many :rooms, EventsTools.Venues.Room  # this was added


    timestamps()
  end

  @doc false
  def changeset(%Hall{} = hall, attrs) do
    hall
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
