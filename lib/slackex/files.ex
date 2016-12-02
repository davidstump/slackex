defmodule Slackex.Files do
  @moduledoc """
  Get info on files uploaded to Slack, upload
  new files to Slack.
  """

  @doc """
  This method deletes a file from your team.
  """
  def delete(file, options \\ %{}) do
    params = options |> Map.merge(%{file: file})
    Slackex.request("files.delete", params)
  end

  @doc """
  This method returns information about a file in
  your team.
  """
  def info(file, options \\ %{}) do
    params = options |> Map.merge(%{file: file})
    Slackex.request("files.info", params)
  end

  @doc """
  This method returns a list of files within the team.
  It can be filtered and sliced in various ways.
  """
  def list(options \\ %{}) do
    Slackex.request("files.list", options)
  end

  @doc """
  This method allows you to create or upload an existing file.
  """
  def upload(file, options \\ %{}) do
    params = options |> Map.merge(%{file: file})
    Slackex.request("files.upload", params)
  end
end
