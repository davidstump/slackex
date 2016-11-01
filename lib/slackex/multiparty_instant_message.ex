defmodule Slackex.MPIM do
  @moduledoc """
  Get info on your multiparty direct messages.
  """

  @doc """
  Get info on your multiparty direct messages.
  """
  def close(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("mpim.close", params)
  end

  @doc """
  This method returns a portion of messages/events
  from the specified multiparty direct message channel.
  To read the entire history for a multiparty direct
  message, call the method with no latest or oldest
  arguments, and then continue paging using the
  instructions below.
  """
  def history(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("mpim.history", params)
  end

  @doc """
  This method returns a list of all multiparty direct
  message channels that the user has.
  """
  def list(options \\ %{}) do
    Slackex.request("mpim.list", options)
  end

  @doc """
  This method moves the read cursor in a multiparty
  direct message channel.
  """
  def mark(channel, timestamp, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, ts: timestamp})
    Slackex.request("mpim.mark", params)
  end

  @doc """
  This method opens a multiparty direct message.

  Opening a multiparty direct message takes a list of
  up-to 8 encoded user ids. If there is no MPIM already
  created that includes that exact set of members, a
  new MPIM will be created. Subsequent calls to mpim.open
  with the same set of users will return the already
  existing MPIM conversation.
  """
  def open(users, options \\ %{}) do
    params = options |> Map.merge(%{users: users})
    Slackex.request("mpim.open", params)
  end
end
