# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nantucket,
  ecto_repos: [Nantucket.Repo]

# Configures the endpoint
config :nantucket, NantucketWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y4m+w5JceyB5VIcBJ3EGMW4SpdAP4m+R9DVbmkc3K9YS58o6PdWvqTC1qVeh6+S0",
  render_errors: [view: NantucketWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Nantucket.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
