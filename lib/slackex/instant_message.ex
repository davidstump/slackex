defmodule Slackex.IM do
  @moduledoc """
  Get info on your direct messages.
  """

  @doc """
  This method closes a direct message channel.
  """
  def close(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
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
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("im.history", params)
  end

  @doc """
  This method returns a list of all im channels that
  the user has.
  """
  def list(options \\ %{}) do
    Slackex.request("im.list", options)
  end

  @doc """
  This method moves the read cursor in a direct message
  channel.
  """
  def mark(channel, timestamp, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, ts: timestamp})
    Slackex.request("im.mark", params)
  end

  @doc """
  This method opens a direct message channel with
  another member of your Slack team.
  """
  def open(user, options \\ %{}) do
    params = options |> Map.merge(%{user: user})
    Slackex.request("im.open", params)
  end
end
