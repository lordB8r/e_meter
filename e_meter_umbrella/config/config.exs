# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

config :postgres,
  ecto_repos: [Postgres.Repo]

config :e_meter_web,
  generators: [context_app: :e_meter]

# Configures the endpoint
config :e_meter_web, EMeterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T21tEffMt/17A85N1dj0dxiChgZOxexbq6ggnu8Dq1zXBLoRIMjbSnDYt8H7x1it",
  render_errors: [view: EMeterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: EMeter.PubSub,
  live_view: [signing_salt: "5x7qBiXQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
