defmodule Fawkes.Schedule.Speaker do
  use Ecto.Schema
  import Ecto.Changeset


  schema "speakers" do
    field :company, :string
    field :description, :string
    field :first_name, :string
    field :github, :string
    field :image_url, :string
    field :last_name, :string
    field :slug, :string
    field :twitter, :string
    field :talk_id, :id

    timestamps()
  end

  @doc false
  def changeset(speaker, attrs) do
    speaker
    |> cast(attrs, [:slug, :image_url, :first_name, :last_name, :company, :github, :twitter, :description])
    |> validate_required([:slug, :image_url, :first_name, :last_name, :company, :github, :twitter, :description])
    |> unique_constraint(:slug)
  end
end
