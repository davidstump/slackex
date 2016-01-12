# Slackex

A Slack wrapper for Elixir
Requires an active account with Slack (http://slack.com).

Provides a wrapper for every API endpoint listed in the [official slack developer documentation](https://api.slack.com/web)

## Installation

Slackex can be installed as:

  1. Add slackex to your list of dependencies in `mix.exs`:

        def deps do
          [{:slackex, "~> 0.0.1"}]
        end

  2. Ensure slackex is started before your application:

        def application do
          [applications: [:slackex]]
        end


## Documentation

For more detailed documentation visit:

* Slackex Documentation: [http://hexdocs.pm/slackex](http://hexdocs.pm/slackex)
* Slack API Methods: [https://api.slack.com/methods](https://api.slack.com/methods)
