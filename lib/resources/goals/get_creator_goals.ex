defmodule TwitchApi.Goals.GetCreatorGoals do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Gets a list of goals that the broadcaster created.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/goals?broadcaster_id=141981764'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"1woowvbkiNv8BRxEWSqmQz6Zk92","broadcaster_id":"141981764","broadcaster_name":"TwitchDev","broadcaster_login":"twitchdev","type":"follower","description":"Follow goal for Helix testing","current_amount":27062,"target_amount":30000,"created_at":"2021-08-16T17:22:23Z"}]}
  # Twitch CLI example that gets broadcaster's goals.

  twitch api get /goals -qbroadcaster_id=141981764 



  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  NEW Gets the broadcaster’s list of active goals.

  ### Required authentication:

  """

  # The ID of the broadcaster that created the goals.
  @typep broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @spec call(broadcaster_id) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/goals?broadcaster_id=#{broadcaster_id}",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end
end
