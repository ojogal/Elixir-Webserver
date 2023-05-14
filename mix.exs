defmodule Webserver.MixProject do
  use Mix.Project

  def project do
    [
      app: :webserver,
      version: "0.1.0",
      elixir: "~> 1.15-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      mix_format: "~> 0.8"
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Webserver.Application, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.5"},
      {:jason, "~> 1.0"},
      {:phoenix, "~> 1.6"}
    ]
  end
end
