defmodule Slackex.IM do
  @moduledoc """
  Get info on your direct messages.
  """

  @doc """
  This method closes a direct message channel.
  """
  def close(channel) do
    params = %{channel: channel}
    Slackex.request("im.close", params)
  end

  @doc """
  This method returns a portion of messages/events
  from the specified direct message channel. To read
  the entire history for a direct message channel, call
  the method with no latest or oldest arguments, and
  then continue paging using the instructions below.
  """
  def history(channel, options \\ %{}) do
    params = [channel: channel] |> Enum.concat(options)
    Slackex.request("im.history", params)
  end

  @doc """
  This method returns a list of all im channels that
  the user has.
  """
  def list do
    Slackex.request("im.list")
  end

  @doc """
  This method moves the read cursor in a direct message
  channel.
  """
  def mark(channel, timestamp) do
    params = %{channel: channel, ts: timestamp}
    Slackex.request("im.mark", params)
  end

  @doc """
  This method opens a direct message channel with
  another member of your Slack team.
  """
  def open(user) do
    params = %{user: user}
    Slackex.request("im.open", params)
  end
end
