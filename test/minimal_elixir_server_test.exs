defmodule MinimalElixirServerTest do
  use ExUnit.Case
  doctest MinimalElixirServer

  test "greets the world" do
    assert MinimalElixirServer.hello() == :world
  end
end
