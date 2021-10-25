defmodule TwitchApi.Users.GetUsers do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This gets information about user 141981764.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/users?id=141981764'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"141981764","login":"twitchdev","display_name":"TwitchDev","type":"","broadcaster_type":"partner","description":"Supporting third-party developers building Twitch integrations from chatbots to game integrations.","profile_image_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/8a6381c7-d0c0-4576-b179-38bd5ce1d6af-profile_image-300x300.png","offline_image_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/3f13ab61-ec78-4fe6-8481-8682cb3b0ac2-channel_offline_image-1920x1080.png","view_count":5980557,"email":"not-real@email.com","created_at":"2016-12-14T20:32:28Z"}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets information about one or more specified Twitch users. Users are identified by optional user IDs and/or login name.

  ### Required authentication:
  OAuth or App Access Token required.

  ### Required authorization:
  OAuth token with user:read:email scope required to include the user’s verified email address in response.
  """

  # User ID. Multiple user IDs can be specified. Limit: 100.
  @type id :: %{required(:id) => String.t()}
  # User login name. Multiple login names can be specified. Limit: 100.
  @type login :: %{required(:login) => String.t()}

  @spec call(id | login) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{id: id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/users?id=#{id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{login: login}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/users?login=#{login}",
      Headers.config_headers(),
      nil
    )
  end
end
