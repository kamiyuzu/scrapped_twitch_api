defmodule TwitchApi.Chat.GetChannelChatBadges do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Returns custom chat badges for the BlueLava Twitch channel.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/chat/badges?broadcaster_id=135093069'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"set_id":"bits","versions":[{"id":"1","image_url_1x":"https://static-cdn.jtvnw.net/badges/v1/743a0f3b-84b3-450b-96a0-503d7f4a9764/1","image_url_2x":"https://static-cdn.jtvnw.net/badges/v1/743a0f3b-84b3-450b-96a0-503d7f4a9764/2","image_url_4x":"https://static-cdn.jtvnw.net/badges/v1/743a0f3b-84b3-450b-96a0-503d7f4a9764/3"}]},{"set_id":"subscriber","versions":[{"id":"0","image_url_1x":"https://static-cdn.jtvnw.net/badges/v1/eb4a8a4c-eacd-4f5e-b9f2-394348310442/1","image_url_2x":"https://static-cdn.jtvnw.net/badges/v1/eb4a8a4c-eacd-4f5e-b9f2-394348310442/2","image_url_4x":"https://static-cdn.jtvnw.net/badges/v1/eb4a8a4c-eacd-4f5e-b9f2-394348310442/3"},...]}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets a list of custom chat badges that can be used in chat for the specified channel.

  ### Required authentication:


  ### Required authorization:
  User OAuth Token or App Access Token
  """

  @typedoc """
  The ID of the broadcaster whose chat badges you want to get.
  """
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @spec call(broadcaster_id) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/chat/badges?broadcaster_id=#{broadcaster_id}",
      Headers.config_headers(),
      nil
    )
  end
end
