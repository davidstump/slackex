defmodule Slackex.Chat do
  @moduledoc """
  Post chat messages to Slack.
  """

  @doc """
  This method deletes a message from a channel.
  """
  def delete(channel, timestamp) do
    params = %{channel: channel, ts: timestamp}
    Slackex.request("chat.delete", params)
  end

  @doc """
  This method posts a message to a public channel,
  private group, or IM channel.
  """
  def post_message(channel, text, options \\ %{}) do
    params = [
      channel: channel,
      text: text
    ] |> Enum.concat(options)

    Slackex.request("chat.postMessage", params)
  end

  @doc """
  This method updates a message in a channel.
  """
  def update(channel, timestamp, text, options \\ %{}) do
    params = [
      channel: channel,
      timestamp: timestamp,
      options: options
    ] |> Enum.concat(options)

    Slackex.request("chat.update", params)
  end
end
