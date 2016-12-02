defmodule Slackex.Auth do
  @moduledoc """
  Authentication Calls for Slack
  """

  @doc """
  Checks Slack Authentication and tells
  the user who they are.
  """

  def test(options \\ %{}) do
    Slackex.request("auth.test", options)
  end
end
