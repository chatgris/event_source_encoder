defmodule EventSourceEncoder.Mixfile do
  use Mix.Project

  def project do
    [
      app: :event_source_encoder,
      version: "0.0.1",
      elixir: "~> 0.14.2",
      description: description,
      package: package,
      deps: deps
    ]
  end

  def application do
    [applications: []]
  end

  defp deps do
    []
  end

  defp description do
    """
    EventSourceEncoder is a Elixir library to encode data into EventSource
    compliant data.
    """
  end

  defp package do
    [
      contributors: ["chatgris"],
      licenses: ["MIT"],
      links: [ { "Github", "https://github.com/chatgris/event_source_encoder" }]
    ]
  end
end
