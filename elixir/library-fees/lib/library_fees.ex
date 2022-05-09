defmodule LibraryFees do
  def datetime_from_string(string) do
    NaiveDateTime.from_iso8601!(string)
  end

  def before_noon?(datetime) do
    datetime_noon = NaiveDateTime.new!(datetime.year, datetime.month, datetime.day, 12, 0, 0)

    case NaiveDateTime.compare(datetime, datetime_noon) do
      :lt -> true
      _ -> false
    end
  end

  def return_date(checkout_datetime) do
    case before_noon?(checkout_datetime) do
      true -> checkout_datetime |> NaiveDateTime.to_date() |> Date.add(28)
      false -> checkout_datetime |> NaiveDateTime.to_date() |> Date.add(29)
    end
  end

  def days_late(planned_return_date, actual_return_datetime) do
    # Please implement the days_late/2 function
  end

  def monday?(datetime) do
    # Please implement the monday?/1 function
  end

  def calculate_late_fee(checkout, return, rate) do
    # Please implement the calculate_late_fee/3 function
  end
end
