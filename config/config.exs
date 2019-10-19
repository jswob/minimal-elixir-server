import Config

config :minimal_elixir_server, MinimalElixirServer.Endpoint, port: "PORT" |> System.get_env() |> String.to_integer()
