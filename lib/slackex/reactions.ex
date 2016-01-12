defmodule Slackex.Reactions do
  @moduledoc """
  Manage Slack Reactions
  """

  @doc """
  This method adds a reaction (emoji) to an item
  (file, file comment, channel message, group message,
  or direct message). One of file, file_comment, or
  the combination of channel and timestamp must be
  specified.
  """
  def add(name, options \\ %{}) do
    params = [name: name] |> Enum.concat(options)
    Slackex.request("reactions.add", params)
  end

  @doc """
  This method returns a list of all reactions for a single
  item (file, file comment, channel message, group message,
  or direct message).
  """
  def get(options \\ %{}) do
    Slackex.request("reactions.get", options)
  end

  @doc """
  This method returns a list of all items (file, file comment,
  channel message, group message, or direct message) reacted
  to by a user.
  """
  def list(options \\ %{}) do
    Slackex.request("reactions.list", options)
  end

  @doc """
  This method removes a reaction (emoji) from an item (file,
  file comment, channel message, group message, or direct
  message). One of file, file_comment, or the combination of
  channel and timestamp must be specified.
  """
  def remove(name, options \\ %{}) do
    params = [name: name] |> Enum.concat(options)
    Slackex.request("reactions.remove", params)
  end
end
