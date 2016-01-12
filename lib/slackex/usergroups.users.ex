defmodule Slackex.UserGroups.Users do
  @moduledoc """
  Get information on users in usergroups
  """

  @doc """
  This method returns a list of all users within
  a user group.
  """
  def list(usergroup, options \\ %{}) do
    params = [usergroup: usergroup] |> Enum.concat(options)
    Slackex.request("usergroup.users.list", params)
  end

  @doc """
  This method updates the list of users that belong to
  a user group. This method replaces all users in a user
  group with the list of users provided in the users
  parameter.
  """
  def update(usergroup, users, options \\ %{}) do
    params = [
      usergroup: usergroup,
      users: users,
    ] |> Enum.concat(options)

    Slackex.request("usergroups.users.update", params)
  end
end
