defmodule EventsTools.Venues.Venue do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Venues.Venue


  schema "venues" do
    field :name, :string
    #has_many :buildings, EventsTools.Venues.Building  # this was added

    timestamps()
  end

  @doc false
  def changeset(%Venue{} = venue, attrs) do
    venue
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
