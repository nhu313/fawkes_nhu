defmodule Fawkes.Schedule.Category do
  use Ecto.Schema
  import Ecto.Changeset


  schema "categories" do
    field :icon_url, :string
    field :name, :string
    field :slug, :string

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:slug, :name, :icon_url])
    |> validate_required([:slug, :name, :icon_url])
    |> unique_constraint(:slug)
  end
end
