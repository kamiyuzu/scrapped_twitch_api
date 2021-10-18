defmodule TwitchApi.Teams.GetTeams do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example gets Team information for the Live Coders Team.
  
  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/teams?id=6358'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'
  

  ## Example response from twitch api docs:
  ### descriptions:
  
  ### responses:
  {"data":[{"users":[{"user_id":"278217731","user_name":"mastermndio","user_login":"mastermndio"},{"user_id":"41284990","user_name":"jenninexus","user_login":"jenninexus"},...],"background_image_url":null,"banner":null,"created_at":"2019-02-11T12:09:22Z","updated_at":"2020-11-18T15:56:41Z","info":"<p>An outgoing and enthusiastic group of friendly channels that write code, teach about technology, and promote the technical community.</p>","thumbnail_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/team-livecoders-team_logo_image-bf1d9a87ca81432687de60e24ad9593d-600x600.png","team_name":"livecoders","team_display_name":"Live Coders","id":"6358"}]}
  

  """

  alias TwitchApi.MyFinch


  @doc """
  ### Description:
  Gets information for a specific Twitch Team.

  ### Required authentication:
  User OAuth Token or App Access Token
  """

  @spec call() :: {:ok, Finch.Response.t} | {:error, Exception.t}
  def call() do
    MyFinch.request("GET","https://api.twitch.tv/helix/teams",
    TwitchApi.ApiJson.Template.Method.Headers.config_headers(), nil)
  end

end
