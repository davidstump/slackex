defmodule Slackex.Groups do
  @moduledoc """
  Get info on your team's private channels.
  """

  @doc """
  This method archives a private channel.
  """
  def archive(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.archive", params)
  end

  @doc """
  This method closes a private channel.
  """
  def close(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.close", params)
  end

  @doc """
  This method creates a private channel.
  """
  def create(name, options \\ %{}) do
    params = options |> Map.merge(%{name: name})
    Slackex.request("groups.create", params)
  end

  @doc """
  This method takes an existing private channel and
  performs the following steps:

  - Renames the existing private channel (from "example"
  to "example-archived").
  - Archives the existing private channel.
  - Creates a new private channel with the name of the
  existing private channel.
  - Adds all members of the existing private channel to
  the new private channel.

  This is useful when inviting a new member to an existing
  private channel while hiding all previous chat history from
  them. In this scenario you can call groups.createChild
  followed by groups.invite.

  The new private channel will have a special parent_group
  property pointing to the original archived private channel.
  This will only be returned for members of both private channels,
  so will not be visible to any newly invited members.
  """
  def create_child(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.createChild", params)
  end

  @doc """
  This method returns a portion of messages/events from the
  specified private channel. To read the entire history for
  a private channel, call the method with no latest or oldest
  arguments, and then continue paging using the instructions
  below.
  """
  def history(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.history", params)
  end

  @doc """
  This method returns information about a private channel.
  """
  def info(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.info", params)
  end

  @doc """
  This method is used to invite a user to a private channel.
  The calling user must be a member of the private channel.

  To invite a new member to a private channel without giving
  them access to the archives of the private channel, call
  the groups.createChild method before inviting.
  """
  def invite(channel, user, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, user: user})
    Slackex.request("groups.invite", params)
  end

  @doc """
  This method allows a user to remove another member from a
  private channel.
  """
  def kick(channel, user, options \\ %{}) do
    params = options |> Map.merge( %{channel: channel, user: user})
    Slackex.request("groups.kick", params)
  end

  @doc """
  This method is used to leave a private channel.
  """
  def leave(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.leave", params)
  end

  @doc """
  This method returns a list of private channels in
  the team that the caller is in and archived groups
  that the caller was in. The list of (non-deactivated)
  members in each private channel is also returned.
  """
  def list(options \\ %{}) do
    Slackex.request("groups.list", options)
  end

  @doc """
  This method moves the read cursor in a private channel.
  """
  def mark(channel, timestamp, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, ts: timestamp})
    Slackex.request("groups.mark", params)
  end

  @doc """
  This method opens a private channel.
  """
  def open(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.open", params)
  end

  @doc """
  This method renames a private channel.
  """
  def rename(channel, name, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, name: name})
    Slackex.request("groups.rename", params)
  end

  @doc """
  This method is used to change the purpose of a
  private channel. The calling user must be a member
  of the private channel.
  """
  def set_purpose(channel, purpose, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, purpose: purpose})
    Slackex.request("groups.setPurpose", params)
  end

  @doc """
  This method is used to change the topic of a private
  channel. The calling user must be a member of the
  private channel.
  """
  def set_topic(channel, topic, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, topic: topic})
    Slackex.request("groups.setTopic", params)
  end

  @doc """
  This method unarchives a private channel.
  """
  def unarchive(channel, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel})
    Slackex.request("groups.unarchive", params)
  end
end
