use Mix.Config

config :rumbl, Rumbl.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "k3bPScuo/3MVE0vtDKZi+a01Jw/mioaY5qvkwPVT/vrEO3kH2dBttB+KUIPj4nbK",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Rumbl.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"

config :phoenix, :generators,
  migration: true,
  binary_id: false
