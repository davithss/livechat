# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :livechat,
  ecto_repos: [Livechat.Repo]

# Configures the endpoint
config :livechat, LivechatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P747iG0Qdo05o0IJlSbWkcnHW4NZTeaO5pLYnAsTNWHRj4psSv0lWtq10LuiapIw",
  render_errors: [view: LivechatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Livechat.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Sc3qHmHeHwomTwxJeZJshpQc3mEdyHLc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix, :template_engines, leex: Phoenix.LiveView.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
