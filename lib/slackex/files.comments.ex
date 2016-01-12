defmodule Slackex.Files.Comments do
  @moduledoc """
  Handles comments on files
  """

  @doc """
  Add a comment to an existing file.
  """
  def add(file, comment) do
    params = %{file: file, comment: comment}
    Slackex.request("files.comments.add", params)
  end

  @doc """
  Delete an existing comment on a file. Only the
  original author of the comment or a team
  administrator may delete a file comment.
  """
  def delete(file, id) do
    params = %{file: file, id: id}
    Slackex.request("files.comments.delete", params)
  end

  @doc """
  Edit an existing comment on a file. Only the user who
  created a comment may make edits. Teams may configure
  a limited time window during which file comment edits
  are allowed.
  """
  def edit(file, id, comment) do
    params = %{file: file, id: id, comment: comment}
    Slackex.request("files.comments.edit", params)
  end
end
