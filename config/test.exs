import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mesaviphx, MesaviphxWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+7v4GVSjM8l7LyK313T8EoHpSjxmCumYjpoA9aJNlrazzIlt4KxKwHbFxyv80lSb",
  server: false

# In test we don't send emails.
config :mesaviphx, Mesaviphx.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
