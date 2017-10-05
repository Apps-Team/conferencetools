defmodule EventsTools.Sponsors.Sponsor do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventsTools.Sponsors.Sponsor


  schema "sponsors" do
    field :name, :string
    belongs_to :organization, EventsTools.Organizations.Organization, on_replace: :nilify
    belongs_to :sponsorship_option, EventsTools.Sponsors.SponsorshipOption, on_replace: :nilify

    timestamps()
  end

  @doc false
  def changeset(%Sponsor{} = sponsor, attrs) do
    sponsor
    |> cast(attrs, [:name])
    #|> cast_assoc(:organization)
    #|> cast_assoc(:sponsorship_option)
    |> validate_required([:name])
  end
end
