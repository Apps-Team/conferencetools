defmodule EventsTools.Organizations.Organization do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Organizations.Organization
  alias EventsTools.Sponsors.Sponsor

  schema "organizations" do
    field :email, :string
    field :facebook, :string
    field :github, :string
    field :linkedin, :string
    field :logo, :string
    field :name, :string
    field :phone, :string
    field :summary, :string
    field :twitter, :string
    field :type, :string
    field :website, :string
    has_many :sponsor, EventsTools.Sponsors.Sponsor

    timestamps()
  end

  @doc false
  def changeset(%Organization{} = organization, attrs) do
    organization
    |> cast(attrs, [:name, :summary, :type, :website, :twitter, :logo, :linkedin, :github, :facebook, :email, :phone])
    |> validate_required([:name])
  end
end
