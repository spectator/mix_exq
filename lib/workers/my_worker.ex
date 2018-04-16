defmodule MixExq.Workers.MyWorker do
  def perform(id) do
    id |> IO.inspect
  end
end

