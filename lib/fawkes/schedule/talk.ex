defmodule Fawkes.Schedule.Talk do
  use Ecto.Schema
  import Ecto.Changeset


  schema "talks" do
    field :description, :string
    field :slug, :string
    field :title, :string

    many_to_many :categories, Fawkes.Schedule.Category, join_through: "talks_categories"
    belongs_to :audience, Fawkes.Schedule.Audience
    belongs_to :location, Fawkes.Schedule.Location
    belongs_to :slot, Fawkes.Schedule.Slot

    timestamps()
  end

  @doc false
  def changeset(talk, attrs) do
    talk
    |> cast(attrs, [:slug, :title, :description])
    |> validate_required([:slug, :title, :description])
    |> unique_constraint(:slug)
    |> assoc_constraint(:audience)
  end
end
