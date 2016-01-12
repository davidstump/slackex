defmodule Slackex.Mixfile do
  use Mix.Project

  def project do
    [app: :slackex,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :exjsx],
     mod: {Slackex, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.8"},
      {:exjsx, "~> 3.2.0", app: false},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end

  defp description do
    """
    A Slack wrapper for Elixir
    Requires an active account with Slack (http://slack.com).
    """
  end

  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
      maintainers: [ "David Stump" ],
      licenses: [ "MIT" ],
      links: %{ "GitHub" => "https://github.com/davidstump/slackex" } ]
  end
end
