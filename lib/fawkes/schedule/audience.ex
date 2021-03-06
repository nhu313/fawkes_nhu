defmodule Fawkes.Schedule.Audience do
  use Ecto.Schema
  import Ecto.Changeset

  schema "audiences" do
    field :name, :string
    field :slug, :string

    has_many :talks, Fawkes.Schedule.Talk

    timestamps()
  end

  @doc false
  def changeset(audience, attrs) do
    audience
    |> cast(attrs, [:slug, :name])
    |> validate_required([:slug, :name])
    |> unique_constraint(:slug)
  end
end
