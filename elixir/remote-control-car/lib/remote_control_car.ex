defmodule RemoteControlCar do
  @enforce_keys [:nickname]
  defstruct [:nickname, battery_percentage: 100, distance_driven_in_meters: 0]

  def new(nickname \\ "none") do
    %RemoteControlCar{nickname: nickname}
  end

  def display_distance(%RemoteControlCar{distance_driven_in_meters: distance}) do
    to_string(distance) <> " meters"
  end

  def display_battery(%RemoteControlCar{battery_percentage: 0}) do
    "Battery empty"
  end

  def display_battery(%RemoteControlCar{battery_percentage: battery}) do
    "Battery at #{battery}%"
  end

  def drive(%RemoteControlCar{battery_percentage: 0} = car) do
    car
  end

  def drive(%RemoteControlCar{
        nickname: nickname,
        battery_percentage: battery,
        distance_driven_in_meters: distance
      }) do
    %RemoteControlCar{
      nickname: nickname,
      battery_percentage: battery - 1,
      distance_driven_in_meters: distance + 20
    }
  end
end
