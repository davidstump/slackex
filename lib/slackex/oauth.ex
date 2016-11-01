defmodule Slackex.OAuth do
  @moduledoc """
  Exchanges a temporary OAuth code for an API token.
  """

  @doc """
  This method allows you to exchange a temporary OAuth
  code for an API access token. This is used as part of
  the OAuth authentication flow.

  As discussed in RFC 6749 it is possible to supply the
  Client ID and Client Secret using the HTTP Basic
  authentication scheme. If HTTP Basic authentication is
  used you do not need to supply the client_id and
  client_secret parameters as part of the request.
  """
  def access(client_id, client_secret, code, options \\ %{}) do
    params = options |> Map.merge(%{
      client_id: client_id,
      client_secret: client_secret,
      code: code
    })

    Slackex.request("oauth.access", params)
  end
end
