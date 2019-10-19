defmodule MinimalElixirServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal_elixir_server,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {MinimalElixirServer.Application, []}
    ]
  end

  defp deps do
    [
      {:poison, "~> 3.0"},
      {:plug, "~> 1.6"},
      {:cowboy, "~> 2.4"},
      {:plug_cowboy, "~> 2.1"}
    ]
  end
end
