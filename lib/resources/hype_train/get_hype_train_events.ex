defmodule TwitchApi.HypeTrain.GetHypeTrainEvents do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -X GET
  'https://api.twitch.tv/helix/hypetrain/events?broadcaster_id=270954519&first=1'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"1b0AsbInCHZW2SQFQkCzqN07Ib2","event_type":"hypetrain.progression","event_timestamp":"2020-04-24T20:07:24Z","version":"1.0","event_data":{"broadcaster_id":"270954519","cooldown_end_time":"2020-04-24T20:13:21.003802269Z","expires_at":"2020-04-24T20:12:21.003802269Z","goal":1800,"id":"70f0c7d8-ff60-4c50-b138-f3a352833b50","last_contribution":{"total":200,"type":"BITS","user":"134247454"},"level":2,"started_at":"2020-04-24T20:05:47.30473127Z","top_contributions":[{"total":600,"type":"BITS","user":"134247450"}],"total":600}}],"pagination":{"cursor":"eyJiIjpudWxsLCJhIjp7IkN1cnNvciI6IjI3MDk1NDUxOToxNTg3NzU4ODQ0OjFiMEFzYkluQ0haVzJTUUZRa0N6cU4wN0liMiJ9fQ"}}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets the information of the most recent Hype Train of the given channel ID.

  ### Required authentication:
  User OAuth Token
  Required scope: channel:read:hype_train

  ### Required authorization:

  """

  @typedoc """
  User ID of the broadcaster. Must match the User ID in the Bearer token if User Token is used.
  """
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @typedoc """
  Maximum number of objects to return. Maximum: 100. Default: 1.
  """
  @type first :: %{required(:first) => integer}

  @typedoc """
  The id of the wanted event, if known
  """
  @type id :: %{required(:id) => String.t()}

  @typedoc """
  Cursor for forward pagination: tells the server where to start fetching the next set of results in a multi-page response. This applies only to queries without id. If an ID is specified, it supersedes any cursor/offset combinations. The cursor value specified here is from the pagination response field of a prior query.
  """
  @type cursor :: %{required(:cursor) => String.t()}

  @typedoc """
  Map containing the user needed information for the fetch of the required user OAuth access token.
  You will be able to choose from one way or the other for fetching previously OAuth access tokens.
  :user_id field contains the user ID from twitch, e.g. 61425548 or "61425548"
  :user_name field constains the user name from twitch, e.g. "hiimkamiyuzu"
  """
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}

  @spec call(broadcaster_id | first | id | cursor, user_info) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/hypetrain/events?broadcaster_id=#{broadcaster_id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{first: first}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/hypetrain/events?first=#{first}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{id: id}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/hypetrain/events?id=#{id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{cursor: cursor}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/hypetrain/events?cursor=#{cursor}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
