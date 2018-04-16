defmodule Mix.Tasks.MixExq.Scheduler do
  use Mix.Task

  @shortdoc "Test Scheduler"

  def run(_args) do
    {:ok, _} = Exq.Enqueuer.start_link([])
    Exq.Enqueuer.enqueue(Exq.Enqueuer, "default", Workers.MyWorker, [1])
  end
end
