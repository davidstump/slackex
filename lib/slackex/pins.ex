defmodule Slackex.Pins do
  @moduledoc """
  Manage Slack Pins
  """

  @doc """
  This method pins an item (file, file comment, channel
  message, or group message) to a particular channel.
  The channel argument is required and one of file,
  file_comment, or timestamp must also be specified.
  """
  def add(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("pins.add", params)
  end

  @doc """
  This method lists the items pinned to a channel.
  """
  def list(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("pins.list", params)
  end

  @doc """
  This method un-pins an item (file, file comment,
  channel message, or group message) from a channel.
  The channel argument is required and one of file,
  file_comment, or timestamp must also be specified.
  """
  def remove(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})    
    Slackex.request("pins.remove", params)
  end
end
