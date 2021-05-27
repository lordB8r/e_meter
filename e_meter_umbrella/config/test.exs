use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :e_meter_web, EMeterWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :postgres, Postgres.Repo,
  username: "postgres",
  password: "postgres",
  database: "e_meter_test_#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox