defmodule EventsTools.Venues.Building do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Venues.Building


  schema "buildings" do
    field :name, :string
    belongs_to :venue, EventsTools.Venues.Venue  # this was added
    has_many :halls, EventsTools.Venues.Hall  # this was added

    timestamps()
  end

  @doc false
  def changeset(%Building{} = building, attrs) do
    building
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
