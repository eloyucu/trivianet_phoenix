# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :trivia_phoenix, TriviaPhoenix.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "crJ/D1puAHAuTiid+Pb8BvTItb3B+YcdEh+wvQXE0jKWADvUAcQKwYpkE9r9EgVO",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: TriviaPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

  # Honeybadger
  config :honeybadger,
    environment_name: :dev,
    api_key: "ec4c9644"
