defmodule TwitchApi.Search.SearchChannels do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example searches for channels:
  This example searches for live channels:

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/search/channels?query=a_seagull'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'
  curl -X GET 'https://api.twitch.tv/helix/search/channels?query=loserfruit'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'


  ## Example response from twitch api docs:
  ### descriptions:
  Search for channels response:
  Search for live channels response:

  ### responses:
  {"data":[{"broadcaster_language":"en","broadcaster_login":"a_seagull","display_name":"A_Seagull","game_id":"506442","game_name":"DOOM Eternal","id":"19070311","is_live":true,"tags_ids":["6ea6bca4-4712-4ab9-a906-e3336a9d8039"],"thumbnail_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/a_seagull-profile_image-4d2d235688c7dc66-300x300.png","title":"a_seagull","started_at":"2020-03-18T17:56:00Z"}],"pagination":{}}
  {"data":[{"broadcaster_language":"en","broadcaster_login":"loserfruit","display_name":"Loserfruit","game_id":"498000","game_name":"House Flipper","id":"41245072","is_live":false,"tags_ids":[],"thumbnail_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/fd17325a-7dc2-46c6-8617-e90ec259501c-profile_image-300x300.png","title":"loserfruit","started_at":""},...],"pagination":{"cursor":"Mg=="}}


  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  Returns a list of channels that match the query via channel name or description either entirely or partially.

  ### Required authentication:
  OAuth or App Access Token required
  """

  # URl encoded search query
  @typep query :: %{required(:query) => String.t()}

  @spec call(query) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{query: query}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/search/channels?query=#{query}",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end
end
