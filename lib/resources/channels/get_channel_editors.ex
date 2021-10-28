defmodule TwitchApi.Channels.GetChannelEditors do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example gets a list of editors for the TwitchDev channel which has a User ID of 141981764.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/channels/editors?broadcaster_id=141981764'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'  
   


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"user_id":"182891647","user_name":"mauerbac","created_at":"2019-02-15T21:19:50.380833Z"},{"user_id":"135093069","user_name":"BlueLava","created_at":"2018-03-07T16:28:29.872937Z"}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets a list of users who have editor permissions for a specific channel.

  ### Required authentication:
  OAuth user token required
  Required scope: channel:read:editors

  ### Required authorization:

  """

  @typedoc """
  Broadcaster’s user ID associated with the channel.
  """
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @typedoc """
  Map containing the user needed information for the fetch of the required user OAuth access token.
  You will be able to choose from one way or the other for fetching previously OAuth access tokens.
  :user_id field contains the user ID from twitch, e.g. 61425548 or "61425548"
  :user_name field constains the user name from twitch, e.g. "hiimkamiyuzu"
  """
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}

  @spec call(broadcaster_id, user_info) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/channels/editors?broadcaster_id=#{broadcaster_id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
