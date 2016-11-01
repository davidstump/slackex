defmodule Slackex.Emoji do
  @moduledoc """
  Gets custom Emojis for a team.
  """

  @doc """
  This method lists the custom emoji for a team.
  """
  def list(options \\ %{}) do
    Slackex.request("emoji.list", options)
  end
end
