defmodule Slackex.Users do
  @moduledoc """
  Get info on members of your Slack team.
  """

  @doc """
  This method lets you find out information about
  a user's presence. Consult the presence documentation
  for more details.
  """
  def get_presence(user, options \\ %{}) do
    params = options |> Map.merge(%{user: user})
    Slackex.request("users.getPresence", params)
  end

  @doc """
  This method returns information about a team member.
  """
  def info(user, options \\ %{}) do
    params = options |> Map.merge(%{user: user})
    Slackex.request("users.info", params)
  end

  @doc """
  This method returns a list of all users in the team. This
  includes deleted/deactivated users.
  """
  def list(options \\ %{}) do
    Slackex.request("users.list", options)
  end

  @doc """
  This method lets the slack messaging server know that the
  authenticated user is currently active. Consult the
  presence documentation for more details.
  """
  def set_active(options \\ %{}) do
    Slackex.request("users.setActive", options)
  end

  @doc """
  This method lets you set the calling user's manual presence.
  Consult the presence documentation for more details.
  """
  def set_presence(presence, options \\ %{}) do
    params = options |> Map.merge(%{presence: presence})
    Slackex.request("users.setPresence", params)
  end
end
