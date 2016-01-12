defmodule Slackex.Auth do
  @moduledoc """
  Authentication Calls for Slack
  """

  @doc """
  Checks Slack Authentication and tells
  the user who they are.
  """

  def test do
    Slackex.request("auth.test")
  end
end
