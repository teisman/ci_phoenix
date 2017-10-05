# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ci_phoenix,
  ecto_repos: [CiPhoenix.Repo]

# Configures the endpoint
config :ci_phoenix, CiPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h7ZzOpf4eB8Jye8Mz3hGJH+y5nd3Y4/VODnlHT6vmXpSBNZ1W0lKu1odn+qVmHE+",
  render_errors: [view: CiPhoenixWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CiPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
