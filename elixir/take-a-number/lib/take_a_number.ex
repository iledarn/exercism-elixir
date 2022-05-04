defmodule TakeANumber do
  def loop(state) do
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid, state)
        loop(state)

      {:take_a_number, sender_pid} ->
        state = state + 1
        send(sender_pid, state)
        loop(state)

      :stop ->
        nil

      _ ->
        loop(state)
    end
  end

  def start() do
    spawn(TakeANumber, :loop, [0])
  end
end
