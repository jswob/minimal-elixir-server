defmodule MinimalElixirServer.Application do
  use Application

  def start(_type, _args), do: Supervisor.start_link(children(), opts())

  defp children do
    [
      MinimalElixirServer.Endpoint
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: MinimalElixirServer.Supervisor
    ]
  end
end
