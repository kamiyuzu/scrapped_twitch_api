defmodule TwitchApi.Videos.DeleteVideos do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example deletes two videos with the IDs 1234 and 9876.

  ### requests:
  curl -X DELETE 'https://api.twitch.tv/helix/videos?id=1234&id=9876'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":["1234","9876"]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Deletes one or more videos. Videos are past broadcasts, Highlights, or uploads.

  ### Required authentication:
  User OAuth token
  Required scope: channel:manage:videos

  ### Required authorization:

  """

  # ID of the video(s) to be deleted. Limit: 5.
  @type id :: %{required(:id) => String.t()}

  # Map containing the user needed information for the user OAuth access token fetch
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}
  @spec call(id, user_info) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{id: id}, user_info) do
    MyFinch.request(
      "DELETE",
      "https://api.twitch.tv/helix/videos?id=#{id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
