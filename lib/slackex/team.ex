defmodule Slackex.Team do
  @moduledoc """
  Get info on your team
  """

  @doc """
  This method is used to get the access logs for
  users on a team.
  """
  def access_logs(options \\ %{}) do
    Slackex.request("team.accessLogs", options)
  end

  @doc """
  This method provides information about your team.
  """
  def info(options \\ %{})do
    Slackex.request("team.info", options)
  end

  @doc """
  This method lists the integration activity logs for
  a team, including when integrations are added, modified
  and removed. This method can only be called by Admins.
  """
  def integration_logs(options \\ %{}) do
    Slackex.request("team.integrationLogs", options)
  end
end
