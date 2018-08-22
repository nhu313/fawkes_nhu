defmodule Fawkes.Schedule.Event do
  use Ecto.Schema
  import Ecto.Changeset


  schema "events" do
    field :name, :string
    field :slug, :string
    field :slot_id, :id

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:slug, :name, :slot_id])
    |> validate_required([:slug, :name, :slot_id])
    |> unique_constraint(:slug)
  end
end
