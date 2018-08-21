defmodule Fawkes.Repo.Migrations.CreateTalkCategory do
  use Ecto.Migration

  def change do
    create table(:talks_categories) do
      add :talk_id, references(:talks, on_delete: :nothing)
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end

    create index(:talks_categories, [:talk_id])
    create index(:talks_categories, [:category_id])
  end
end
