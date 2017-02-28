defmodule Slackex do
  @moduledoc """
  An HTTP client for Slack.
  """

  # Let's build on top of HTTPoison
  use Application
  use HTTPoison.Base

  def start(_type, _args) do
    Slackex.Supervisor.start_link
  end

  @doc """
  Creates the URL for our endpoint.
  Args:
    * endpoint - part of the API we're hitting
  Returns string
  """
  def process_url(endpoint) do
    "https://slack.com/api/" <> endpoint
  end

  @doc """
  Converts the binary keys in our response to atoms.
  Args:
    * body - string binary response
  Returns Record or ArgumentError
  """
  def process_response_body(body) do
    JSX.decode!(body, [{:labels, :atom}])
  end

  @doc """
  Boilerplate code to make requests.
  Args:
    * endpoint - string requested API endpoint
    * body - request body
  Uses token if provided, otherwise uses the one from the env / config
  Returns dict
  """

  def request(endpoint, body \\ %{})

  def request(endpoint, %{token: _} = body) do
    Slackex.get!(
      endpoint,
      headers(),
      params: body
    ).body
  end

  def request(endpoint, body) do
    request(endpoint, Map.put(body, :token, Slackex.token))
  end


  @doc """
  Includes user Slack token with params
  """
  def params_with_auth(body) do
    Map.put(body, :token, Slackex.token)
  end

  @doc """
  Default json headers
  """
  def headers do
    %{
      "Content-Type" => "application/json",
      "Accept" => "application/json"
    }
  end

  @doc """
  Gets the token from :slackex, :token application env or
  SLACK_TOKEN from system ENV
  Returns binary
  """
  def token do
    Application.get_env(:slackex, :token) ||
      System.get_env("SLACK_TOKEN")
  end
end
