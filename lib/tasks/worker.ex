defmodule Mix.Tasks.MixExq.Worker do
  use Mix.Task

  @shortdoc "Starts Exq"

  def run(_args) do
    {:ok, _} = Exq.start_link
    IO.puts "Started Exq"
    :timer.sleep(:infinity)
  end
end
