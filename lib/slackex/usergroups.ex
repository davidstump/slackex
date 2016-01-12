defmodule Slackex.UserGroups do
  @moduledoc """
  Get info on your team's user groups.
  """

  @doc """
  This method is used to create a user group.
  """
  def create(name, options) do
    params = [name: name] |> Enum.concat(options)
    Slackex.request("usergroups.create", params)
  end

  @doc """
  This method disables an existing user group.
  """
  def disable(usergroup, options \\ %{}) do
    params = [usergroup: usergroup] |> Enum.concat(options)
    Slackex.request("usergroups.disable", params)
  end

  @doc """
  This method enables a user group which was
  previously disabled.
  """
  def enable(usergroup, options \\ %{}) do
    params = [usergroup: usergroup] |> Enum.concat(options)
    Slackex.request("usergroup.enable", params)
  end

  @doc """
  This method returns a list of all user groups in the
  team. This can optionally include disabled user groups.
  """
  def list(options \\ %{}) do
    Slackex.request("usergroups.list", options)
  end

  @doc """
  This method updates the properties of an existing
  user group.
  """
  def update(usergroup, options \\ %{}) do
    params = [usergroup: usergroup] |> Enum.concat(options)
    Slackex.request("usergroups.update", params)
  end
end
