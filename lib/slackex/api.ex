defmodule Slackex.Api do
  @moduledoc """
  API Test Calls for Slack
  """

  @doc """
  Returns an "ok" message when a
  successfull connection to the Slack
  API is made
  """

  def test do
    Slackex.request("api.test")
  end

end
