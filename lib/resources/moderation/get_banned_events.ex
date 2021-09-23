defmodule TwitchApi.Moderation.GetBannedEvents do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Returns all bans and un-bans for broadcaster 198704263.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/moderation/banned/events?broadcaster_id=198704263'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"1IPFqAb0p0JncbPSTEPhx8JF1Sa","event_type":"moderation.user.ban","event_timestamp":"2019-03-13T15:55:14Z","version":"1.0","event_data":{"broadcaster_id":"198704263","broadcaster_login":"racageneg","broadcaster_name":"racageneg","user_id":"424596340","user_login":"quotrok","user_name":"quotrok","expires_at":"","reason":"Does not like pineapple on pizza.","moderator_id":"141981764","moderator_login":"twitchdev","moderator_name":"TwitchDev"}},{"id":"1IPFsDv5cs4mxfJ1s2O9Q5flf4Y","event_type":"moderation.user.unban","event_timestamp":"2019-03-13T15:55:30Z","version":"1.0","event_data":{"broadcaster_id":"198704263","broadcaster_login":"racageneg","broadcaster_name":"racageneg","user_id":"424596340","user_login":"quotrok","user_name":"quotrok","expires_at":"","reason":"Does not like pineapple on pizza.","moderator_id":"141981764","moderator_login":"twitchdev","moderator_name":"TwitchDev"}},...],"pagination":{"cursor":"eyJiIjpudWxsLCJhIjp7IkN1cnNvciI6IjE5OTYwNDI2MzoyMDIxMjA1MzE6MUlQRnFtbHU5VzJxNG1YWGpVTHlNOHpYMHJiIn19"}}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Returns all user ban and un-ban events for a channel.

  ### Required authentication:

  """

  # Provided broadcaster_id must match the user_id in the OAuth token.
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}
  # Filters the results to only include users being banned or un-banned in the specified channel based on their user ID.Multiple user IDs can be provided, e.g. /moderation/banned/events?broadcaster_id=1&user_id=2&user_id=3Maximum: 100.
  @type user_id :: %{required(:user_id) => String.t()}
  # Cursor for forward pagination: tells the server where to start fetching the next set of results in a multi-page response. This applies only to queries without user_id. If a user_id is specified, it supersedes any cursor/offset combinations. The cursor value specified here is from the pagination response field of a prior query.
  @type after_query_param :: %{required(:after_query_param) => String.t()}
  # Maximum number of objects to return.Maximum: 100.Default: 20.
  @type first :: %{required(:first) => String.t()}

  @spec call(broadcaster_id | user_id | after_query_param | first) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/moderation/banned/events?broadcaster_id=#{broadcaster_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{user_id: user_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/moderation/banned/events?user_id=#{user_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{after: after_query_param}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/moderation/banned/events?after=#{after_query_param}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{first: first}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/moderation/banned/events?first=#{first}",
      Headers.config_headers(),
      nil
    )
  end
end
