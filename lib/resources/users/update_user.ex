defmodule TwitchApi.Users.UpdateUser do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This updates the description of the user specified by Bearer token cfabdegwdoklmawdzdo98xt2fo512y.

  ### requests:
  curl  -X PUT 'https://api.twitch.tv/helix/users?description=BaldAngel'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"44322889","login":"dallas","display_name":"dallas","type":"staff","broadcaster_type":"affiliate","description":"BaldAngel","profile_image_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/4d1f36cbf1f0072d-profile_image-300x300.png","offline_image_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/dallas-channel_offline_image-2e82c1df2a464df7-1920x1080.jpeg","view_count":6995,"email":"not-real@email.com","created_at":"2013-06-03T19:12:02.580593Z"}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Updates the description of a user specified by a Bearer token.

  ### Required authentication:
  OAuth token required
  Required scope: user:edit

  ### Required authorization:

  """

  # User’s account description
  @type description :: %{required(:description) => String.t()}

  # Map containing the user needed information for the user OAuth access token fetch
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}
  @spec call(description, user_info) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{description: description}, user_info) do
    MyFinch.request(
      "PUT",
      "https://api.twitch.tv/helix/users?description=<description>?description=#{description}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
