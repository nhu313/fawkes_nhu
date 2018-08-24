defmodule FawkesWeb.SlotView do
  use FawkesWeb, :view

  def format_time(date) do
    Timex.format!(date, "%-I:%M %p", :strftime)
  end
end
