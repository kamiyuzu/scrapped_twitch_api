defmodule TwitchApi.Clips.CreateClip do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -X POST 'https://api.twitch.tv/helix/clips?broadcaster_id=44322889'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"FiveWordsForClipSlug","edit_url":"http://clips.twitch.tv/FiveWordsForClipSlug/edit"}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Creates a clip programmatically. This returns both an ID and an edit URL for the new clip.

  ### Required authentication:
  OAuth token required
  Required scope: clips:edit
  """

  # ID of the stream from which the clip will be made.
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}
  # If false, the clip is captured from the live stream when the API is called; otherwise, a delay is added before the clip is captured (to account for the brief delay between the broadcaster’s stream and the viewer’s experience of that stream). Default: false.
  @type has_delay :: %{required(:has_delay) => boolean}

  @spec call(broadcaster_id | has_delay) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "POST",
      "https://api.twitch.tv/helix/clips?broadcaster_id=#{broadcaster_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{has_delay: has_delay}) do
    MyFinch.request(
      "POST",
      "https://api.twitch.tv/helix/clips?has_delay=#{has_delay}",
      Headers.config_headers(),
      nil
    )
  end
end
