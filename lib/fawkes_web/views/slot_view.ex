defmodule FawkesWeb.SlotView do
  use FawkesWeb, :view

  def format_time(date) do
    Timex.format!(date, "%-I:%M %p", :strftime)
  end

  def conference_dates do
    format = "{YYYY}-{M}-{D}"

    [Timex.parse!("2018-09-04", format),
     Timex.parse!("2018-09-05", format),
     Timex.parse!("2018-09-06", format),
     Timex.parse!("2018-09-07", format)]
  end
end
