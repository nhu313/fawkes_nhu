defmodule Fawkes.Schedule do
  alias Fawkes.Repo
  alias Fawkes.Schedule.Category

  def all_category do
    Repo.all(Category)
  end

  def create_category(attrs \\ %{}) do
    %Category{}
    |> Category.changeset(attrs)
    |> Repo.insert()
  end


  alias Fawkes.Schedule.Audience

  @doc """
  Returns the list of audiences.

  ## Examples

      iex> list_audiences()
      [%Audience{}, ...]

  """
  def list_audiences do
    Repo.all(Audience)
  end

  @doc """
  Gets a single audience.

  Raises `Ecto.NoResultsError` if the Audience does not exist.

  ## Examples

      iex> get_audience!(123)
      %Audience{}

      iex> get_audience!(456)
      ** (Ecto.NoResultsError)

  """
  def get_audience!(id), do: Repo.get!(Audience, id)

  @doc """
  Creates a audience.

  ## Examples

      iex> create_audience(%{field: value})
      {:ok, %Audience{}}

      iex> create_audience(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_audience(attrs \\ %{}) do
    %Audience{}
    |> Audience.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a audience.

  ## Examples

      iex> update_audience(audience, %{field: new_value})
      {:ok, %Audience{}}

      iex> update_audience(audience, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_audience(%Audience{} = audience, attrs) do
    audience
    |> Audience.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Audience.

  ## Examples

      iex> delete_audience(audience)
      {:ok, %Audience{}}

      iex> delete_audience(audience)
      {:error, %Ecto.Changeset{}}

  """
  def delete_audience(%Audience{} = audience) do
    Repo.delete(audience)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking audience changes.

  ## Examples

      iex> change_audience(audience)
      %Ecto.Changeset{source: %Audience{}}

  """
  def change_audience(%Audience{} = audience) do
    Audience.changeset(audience, %{})
  end

  alias Fawkes.Schedule.Slot

  @doc """
  Returns the list of schedule_slots.

  ## Examples

      iex> list_schedule_slots()
      [%Slot{}, ...]

  """
  def list_schedule_slots do
    Repo.all(Slot)
  end

  @doc """
  Gets a single slot.

  Raises `Ecto.NoResultsError` if the Slot does not exist.

  ## Examples

      iex> get_slot!(123)
      %Slot{}

      iex> get_slot!(456)
      ** (Ecto.NoResultsError)

  """
  def get_slot!(id), do: Repo.get!(Slot, id)

  @doc """
  Creates a slot.

  ## Examples

      iex> create_slot(%{field: value})
      {:ok, %Slot{}}

      iex> create_slot(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_slot(attrs \\ %{}) do
    %Slot{}
    |> Slot.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a slot.

  ## Examples

      iex> update_slot(slot, %{field: new_value})
      {:ok, %Slot{}}

      iex> update_slot(slot, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_slot(%Slot{} = slot, attrs) do
    slot
    |> Slot.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Slot.

  ## Examples

      iex> delete_slot(slot)
      {:ok, %Slot{}}

      iex> delete_slot(slot)
      {:error, %Ecto.Changeset{}}

  """
  def delete_slot(%Slot{} = slot) do
    Repo.delete(slot)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking slot changes.

  ## Examples

      iex> change_slot(slot)
      %Ecto.Changeset{source: %Slot{}}

  """
  def change_slot(%Slot{} = slot) do
    Slot.changeset(slot, %{})
  end

  alias Fawkes.Schedule.Location

  @doc """
  Returns the list of locations.

  ## Examples

      iex> list_locations()
      [%Location{}, ...]

  """
  def list_locations do
    Repo.all(Location)
  end

  @doc """
  Gets a single location.

  Raises `Ecto.NoResultsError` if the Location does not exist.

  ## Examples

      iex> get_location!(123)
      %Location{}

      iex> get_location!(456)
      ** (Ecto.NoResultsError)

  """
  def get_location!(id), do: Repo.get!(Location, id)

  @doc """
  Creates a location.

  ## Examples

      iex> create_location(%{field: value})
      {:ok, %Location{}}

      iex> create_location(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_location(attrs \\ %{}) do
    %Location{}
    |> Location.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a location.

  ## Examples

      iex> update_location(location, %{field: new_value})
      {:ok, %Location{}}

      iex> update_location(location, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_location(%Location{} = location, attrs) do
    location
    |> Location.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Location.

  ## Examples

      iex> delete_location(location)
      {:ok, %Location{}}

      iex> delete_location(location)
      {:error, %Ecto.Changeset{}}

  """
  def delete_location(%Location{} = location) do
    Repo.delete(location)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking location changes.

  ## Examples

      iex> change_location(location)
      %Ecto.Changeset{source: %Location{}}

  """
  def change_location(%Location{} = location) do
    Location.changeset(location, %{})
  end

  alias Fawkes.Schedule.Event

  @doc """
  Returns the list of events.

  ## Examples

      iex> list_events()
      [%Event{}, ...]

  """
  def list_events do
    Repo.all(Event)
  end

  @doc """
  Gets a single event.

  Raises `Ecto.NoResultsError` if the Event does not exist.

  ## Examples

      iex> get_event!(123)
      %Event{}

      iex> get_event!(456)
      ** (Ecto.NoResultsError)

  """
  def get_event!(id), do: Repo.get!(Event, id)

  @doc """
  Creates a event.

  ## Examples

      iex> create_event(%{field: value})
      {:ok, %Event{}}

      iex> create_event(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_event(attrs \\ %{}) do
    %Event{}
    |> Event.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a event.

  ## Examples

      iex> update_event(event, %{field: new_value})
      {:ok, %Event{}}

      iex> update_event(event, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_event(%Event{} = event, attrs) do
    event
    |> Event.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Event.

  ## Examples

      iex> delete_event(event)
      {:ok, %Event{}}

      iex> delete_event(event)
      {:error, %Ecto.Changeset{}}

  """
  def delete_event(%Event{} = event) do
    Repo.delete(event)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking event changes.

  ## Examples

      iex> change_event(event)
      %Ecto.Changeset{source: %Event{}}

  """
  def change_event(%Event{} = event) do
    Event.changeset(event, %{})
  end
end
