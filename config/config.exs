# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mix_exq,
  ecto_repos: [MixExq.Repo]

# Configures the endpoint
config :mix_exq, MixExqWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oJS0xfmVw866B71xJvXi4a8rjEVxvOCqPHeqXC28u1C6T3DG19wggxoSAV5E4IS5",
  render_errors: [view: MixExqWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MixExq.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :exq,
  name: Exq,
  concurrency: 20,
  queues: ["default"],
  start_on_application: false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
