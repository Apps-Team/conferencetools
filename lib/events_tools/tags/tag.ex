defmodule EventsTools.Tags.Tag do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Tags.Tag


  schema "tags" do
    field :name, :string
    #many_to_many :post, EventsTools.Posts.Posts, join_through: "posts_tags", on_delete: :delete_all, on_replace: :delete
    #many_to_many :presentation, EventsTools.Presentations.Presentation, join_through: "presentations_tags", on_delete: :delete_all, on_replace: :delete

    timestamps()
  end

  @doc false
  def changeset(%Tag{} = tag, attrs) do
    tag
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
