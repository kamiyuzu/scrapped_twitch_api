defmodule TwitchApi.Subscriptions.GetBroadcasterSubscriptions do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/subscriptions?broadcaster_id=141981764'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"broadcaster_id":"141981764","broadcaster_login":"twitchdev","broadcaster_name":"TwitchDev","gifter_id":"12826","gifter_login":"twitch","gifter_name":"Twitch","is_gift":true,"tier":"1000","plan_name":"Channel Subscription (twitchdev)","user_id":"527115020","user_name":"twitchgaming","user_login":"twitchgaming"},...],"pagination":{"cursor":"xxxx"},"total":13}


  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  Gets all of a broadcaster’s subscriptions.

  ### Required authentication:
  OAuth token required
  Required scope: channel:read:subscriptions
  Subscriptions can be requested on behalf of a broadcaster with a user access token or by a Twitch Extension with an app access token if the broadcaster has granted the 
  channel:read:subscriptions
   scope from within the Twitch Extensions manager.
  """

  # User ID of the broadcaster. Must match the User ID in the Bearer token.
  @typep broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @spec call(broadcaster_id) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/subscriptions?broadcaster_id=#{broadcaster_id}",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end
end
