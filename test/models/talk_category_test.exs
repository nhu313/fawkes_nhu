defmodule Fawkes.TalkCategoryTest do
  use Fawkes.ModelCase

  alias Fawkes.TalkCategory

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = TalkCategory.changeset(%TalkCategory{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TalkCategory.changeset(%TalkCategory{}, @invalid_attrs)
    refute changeset.valid?
  end
end
