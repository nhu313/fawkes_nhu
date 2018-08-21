defmodule Fawkes.TalkCategory do
  use Fawkes.Web, :model

  schema "talks_categories" do
    belongs_to :talk, Fawkes.Talk, foreign_key: :talk_id
    belongs_to :category, Fawkes.Category, foreign_key: :category_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
