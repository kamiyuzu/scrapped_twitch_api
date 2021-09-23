defmodule TwitchApi.Schedule.DeleteChannelStreamScheduleSegment do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Delete a non-recurring stream schedule segment for the TwitchDev channel’s stream schedule.

  ### requests:
  curl -X DELETE 'https://api.twitch.tv/helix/schedule/segment?broadcaster_id=141981764&id=eyJzZWdtZW50SUQiOiI4Y2EwN2E2NC0xYTZkLTRjYWItYWE5Ni0xNjIyYzNjYWUzZDkiLCJpc29ZZWFyIjoyMDIxLCJpc29XZWVrIjoyMX0='  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  204NoContent


  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  NEW Delete a single scheduled broadcast or a recurring scheduled broadcast for a channel’s stream schedule.

  ### Required authentication:

  """

  # User ID of the broadcaster who owns the channel streaming schedule. Provided broadcaster_id must match the user_id in the user OAuth token.Maximum: 1
  @typep broadcaster_id :: %{required(:broadcaster_id) => String.t()}
  # The ID of the streaming segment to delete.
  @typep id :: %{required(:id) => String.t()}

  @spec call(broadcaster_id | id) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "DELETE",
      "https://api.twitch.tv/helix/schedule/segment?broadcaster_id=#{broadcaster_id}",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end

  def call(%{id: id}) do
    MyFinch.request(
      "DELETE",
      "https://api.twitch.tv/helix/schedule/segment?id=#{id}",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end
end
