defmodule Fawkes.Repo.Migrations.CreateSpeakers do
  use Ecto.Migration

  def change do
    create table(:speakers) do
      add :slug, :string
      add :image_url, :string
      add :first_name, :string
      add :last_name, :string
      add :company, :string
      add :github, :string
      add :twitter, :string
      add :description, :text
      add :talk_id, references(:talks, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:speakers, [:slug])
    create index(:speakers, [:talk_id])
  end
end
