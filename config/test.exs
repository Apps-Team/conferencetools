use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :events_tools, EventsTools.Web.Endpoint,
  url: [host: "localhost", port: 4000],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :events_tools, EventsTools.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "",
  password: "",
  database: "",
  hostname: "",
  #database: "ct_oc_test",
  #hostname: "localhost",
  pool_size: 10
  #hostname: "opencamp-dev.clsbkxx9al65.us-east-1.rds.amazonaws.com",

  # Configure your database
  config :events_tools, ecto_repos: [EventsTools.Repo]
