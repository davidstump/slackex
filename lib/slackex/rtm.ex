defmodule Slackex.RTM do
  @moduledoc """
  Manage Slack Real Time Messaging Session
  """

  @doc """
  This method starts a Real Time Messaging API session.
  Refer to the RTM API documentation for full details on
  how to use the RTM API.
  """
  def start(options \\ %{}) do
    Slackex.request("rtm.start", options)
  end
end
