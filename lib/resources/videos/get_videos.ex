defmodule TwitchApi.Videos.GetVideos do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This gets information about the video with ID 335921245.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/videos?id=335921245'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"335921245","stream_id":null,"user_id":"141981764","user_login":"twitchdev","user_name":"TwitchDev","title":"Twitch Developers 101","description":"Welcome to Twitch development! Here is a quick overview of our products and information to help you get started.","created_at":"2018-11-14T21:30:18Z","published_at":"2018-11-14T22:04:30Z","url":"https://www.twitch.tv/videos/335921245","thumbnail_url":"https://static-cdn.jtvnw.net/cf_vods/d2nvs31859zcd8/twitchdev/335921245/ce0f3a7f-57a3-4152-bc06-0c6610189fb3/thumb/index-0000000000-%{width}x%{height}.jpg","viewable":"public","view_count":1863062,"language":"en","type":"upload","duration":"3m21s","muted_segments":[{"duration":30,"offset":120}]}],"pagination":{}}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets video information by one or more video IDs, user ID, or game ID.

  ### Required authentication:
  User OAuth Token or App Access Token
  """

  # ID of the video being queried. Limit: 100. If this is specified, you cannot use any of the optional query parameters below.
  @type id :: %{required(:id) => String.t()}
  # ID of the user who owns the video. Limit 1.
  @type user_id :: %{required(:user_id) => String.t()}
  # ID of the game the video is of. Limit 1.
  @type game_id :: %{required(:game_id) => String.t()}
  # Cursor for forward pagination: tells the server where to start fetching the next set of results, in a multi-page response. The cursor value specified here is from the pagination response field of a prior query.
  @type after_query_param :: %{required(:after_query_param) => String.t()}
  # Cursor for backward pagination: tells the server where to start fetching the next set of results, in a multi-page response. The cursor value specified here is from the pagination response field of a prior query.
  @type before :: %{required(:before) => String.t()}
  # Number of values to be returned when getting videos by user or game ID. Limit: 100. Default: 20.
  @type first :: %{required(:first) => String.t()}
  # Language of the video being queried. Limit: 1. A language value must be either the ISO 639-1 two-letter code for a supported stream language or “other”.
  @type language :: %{required(:language) => String.t()}
  # Period during which the video was created. Valid values: "all", "day", "week", "month". Default: "all".
  @type period :: %{required(:period) => String.t()}
  # Sort order of the videos. Valid values: "time", "trending", "views". Default: "time".
  @type sort :: %{required(:sort) => String.t()}
  # Type of video. Valid values: "all", "upload", "archive", "highlight". Default: "all".
  @type type :: %{required(:type) => String.t()}

  @spec call(
          id
          | user_id
          | game_id
          | after_query_param
          | before
          | first
          | language
          | period
          | sort
          | type
        ) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{id: id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?id=#{id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{user_id: user_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?user_id=#{user_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{game_id: game_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?game_id=#{game_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{after: after_query_param}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?after=#{after_query_param}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{before: before}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?before=#{before}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{first: first}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?first=#{first}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{language: language}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?language=#{language}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{period: period}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?period=#{period}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{sort: sort}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?sort=#{sort}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{type: type}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/videos?type=#{type}",
      Headers.config_headers(),
      nil
    )
  end
end
