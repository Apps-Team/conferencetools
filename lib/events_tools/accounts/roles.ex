defmodule EventsTools.Accounts.Roles do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Accounts.Roles
  alias EventsTools.SlugsRoles

  @derive {Phoenix.Param, key: :slug}
  schema "roles" do
    field :description, :string
    field :name, :string
    field :slug, SlugsRoles.Type
    many_to_many :users, EventsTools.Accounts.User, join_through: "users_roles", on_delete: :delete_all, on_replace: :delete

    timestamps()
  end

  @doc false
  def changeset(%Roles{} = roles, attrs) do
    roles
    |> cast(attrs, [:name, :description, :slug])
    |> validate_required([:name])
    |> SlugsRoles.maybe_generate_slug
    |> SlugsRoles.unique_constraint

  end
end
