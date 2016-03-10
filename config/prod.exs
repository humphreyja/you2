use Mix.Config

# Configure Endpoint
config :phoenix_project_template, You2.Endpoint,
  cache_static_manifest: "priv/static/manifest.json",
  http:                  [port: {:system, "PORT"}],
  secret_key_base:       System.get_env("SECRET_KEY_BASE"),
  url:                   [host: System.get_env("HOST"), port: 443, scheme: "https"]

# Configure Database
config :phoenix_project_template, You2.Repo,
  adapter:   Ecto.Adapters.Postgres,
  pool_size: 20,
  url:       System.get_env("DATABASE_URL")

# Do not print debug messages in production
config :logger, level: :info

# ## Using releases
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start the server for all endpoints:
#
#     config :phoenix, :serve_endpoints, true
#
# Alternatively, you can configure exactly which server to
# start per endpoint:
#
#     config :phoenix_project_template, You2.Endpoint, server: true
#
# You will also need to set the application root to `.` in order
# for the new static assets to be served after a hot upgrade:
#
#     config :phoenix_project_template, You2.Endpoint, root: "."
