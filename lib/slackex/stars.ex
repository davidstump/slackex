defmodule Slackex.Stars do
  @moduledoc """
  Manage Slack Stars
  """

  @doc """
  This method adds a star to an item (message, file,
  file comment, channel, private group, or DM) on behalf
  of the authenticated user. One of file, file_comment,
  channel, or the combination of channel and timestamp
  must be specified.
  """
  def add(options \\ %{}) do
    Slackex.request("stars.add", options)
  end

  @doc """
  This method lists the items starred by a user.
  """
  def list(options \\ %{}) do
    Slackex.request("stars.list", options)
  end

  @doc """
  This method removes a star from an item (message,
  file, file comment, channel, private group, or DM)
  on behalf of the authenticated user. One of file,
  file_comment, channel, or the combination of channel
  and timestamp must be specified.
  """
  def remove(options \\ %{}) do
    Slackex.request("stars.remove", options)
  end
end
