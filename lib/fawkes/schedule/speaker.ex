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

    belongs_to :talk, Fawkes.Schedule.Talk

    timestamps()
  end

  @doc false
  def changeset(speaker, attrs) do
    speaker
    |> cast(attrs, [:slug, :image_url, :first_name, :last_name, :company, :github, :twitter, :description, :talk_id])
    |> validate_required([:slug, :image_url, :first_name, :last_name, :description])
    |> unique_constraint(:slug)
    |> assoc_constraint(:talk)
  end
end
