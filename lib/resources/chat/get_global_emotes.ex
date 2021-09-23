defmodule TwitchApi.Chat.GetGlobalEmotes do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example returns all global emotes.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/chat/emotes/global'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"196892","name":"TwitchUnity","images":{"url_1x":"https://static-cdn.jtvnw.net/emoticons/v2/196892/static/light/1.0","url_2x":"https://static-cdn.jtvnw.net/emoticons/v2/196892/static/light/2.0","url_4x":"https://static-cdn.jtvnw.net/emoticons/v2/196892/static/light/3.0"},"format":["static"],"scale":["1.0","2.0","3.0"],"theme_mode":["light","dark"]},...],"template":"https://static-cdn.jtvnw.net/emoticons/v2/{{id}}/{{format}}/{{theme_mode}}/{{scale}}"}
  # Twitch CLI example that returns all global emotes.

  twitch api get /chat/emotes/global



  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  NEW Gets all global emotes. Global emotes are Twitch-specific emoticons that every user can use in Twitch chat.

  ### Required authentication:

  """

  @spec call() :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call() do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/chat/emotes/global",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end
end
