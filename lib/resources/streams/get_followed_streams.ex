defmodule TwitchApi.Streams.GetFollowedStreams do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Retrieves the active streams for the channels that the TwitchDev user follows.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/streams/followed?user_id=141981764'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"42170724654","user_id":"132954738","user_login":"aws","user_name":"AWS","game_id":"417752","game_name":"Talk Shows & Podcasts","type":"live","title":"AWS Howdy Partner! Y'all welcome ExtraHop to the show!","viewer_count":20,"started_at":"2021-03-31T20:57:26Z","language":"en","thumbnail_url":"https://static-cdn.jtvnw.net/previews-ttv/live_user_aws-{width}x{height}.jpg","tag_ids":["6ea6bca4-4712-4ab9-a906-e3336a9d8039"]},...],"pagination":{"cursor":"eyJiIjp7IkN1cnNvciI6ImV5SnpJam8zT0RNMk5TNDBORFF4TlRjMU1UY3hOU3dpWkNJNlptRnNjMlVzSW5RaU9uUnlkV1Y5In0sImEiOnsiQ3Vyc29yIjoiZXlKeklqb3hOVGs0TkM0MU56RXhNekExTVRZNU1ESXNJbVFpT21aaGJITmxMQ0owSWpwMGNuVmxmUT09In19"}}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets information about active streams belonging to channels that the authenticated user follows.

  ### Required authentication:
  OAuth user token required
  Required scope: user:read:follows

  ### Required authorization:

  """

  @typedoc """
  Results will only include active streams from the channels that this Twitch user follows. user_id must match the User ID in the bearer token.
  """
  @type user_id :: %{required(:user_id) => String.t()}

  @typedoc """
  Cursor for forward pagination: tells the server where to start fetching the next set of results, in a multi-page response. The cursor value specified here is from the pagination response field of a prior query.
  """
  @type after_query_param :: %{required(:after_query_param) => String.t()}

  @typedoc """
  Maximum number of objects to return. Maximum: 100. Default: 100.
  """
  @type first :: %{required(:first) => integer}

  @typedoc """
  Map containing the user needed information for the fetch of the required user OAuth access token.
  You will be able to choose from one way or the other for fetching previously OAuth access tokens.
  :user_id field contains the user ID from twitch, e.g. 61425548 or "61425548"
  :user_name field constains the user name from twitch, e.g. "hiimkamiyuzu"
  """
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}

  @spec call(user_id | after_query_param | first, user_info) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{user_id: user_id}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/streams/followed?user_id=#{user_id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{after: after_query_param}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/streams/followed?after=#{after_query_param}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{first: first}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/streams/followed?first=#{first}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
