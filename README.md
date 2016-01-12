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

  3. Obtain a Slack token and set it as a System ENV as `SLACK_TOKEN`


## Examples

Just a few small examples to get you started. Details documentation is linked below.

To list all of your Slack channels:

```
channels = Slackex.Channels.list
```

To create a new channel

```
new_channel = Slackex.Channels.create("My New Channel")
```

## Documentation

For more detailed documentation visit:

* Slackex Documentation: [http://hexdocs.pm/slackex](http://hexdocs.pm/slackex)
* Slack API Methods: [https://api.slack.com/methods](https://api.slack.com/methods)
