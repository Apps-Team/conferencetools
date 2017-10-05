defmodule EventsTools.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Comments.Comment


  schema "comments" do
    field :body, :string
    field :title, :string
    belongs_to :post, EventsTools.Posts.Post

    timestamps()
  end

  @doc false
  def changeset(%Comment{} = comment, attrs) do
    comment
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
