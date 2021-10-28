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
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  NEW Delete a single scheduled broadcast or a recurring scheduled broadcast for a channel’s stream schedule.

  ### Required authentication:


  ### Required authorization:
  User OAuth TokenRequired scope: channel:manage:schedule
  """

  @typedoc """
  User ID of the broadcaster who owns the channel streaming schedule. Provided broadcaster_id must match the user_id in the user OAuth token.Maximum: 1
  """
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @typedoc """
  The ID of the streaming segment to delete.
  """
  @type id :: %{required(:id) => String.t()}

  @typedoc """
  Map containing the user needed information for the fetch of the required user OAuth access token.
  You will be able to choose from one way or the other for fetching previously OAuth access tokens.
  :user_id field contains the user ID from twitch, e.g. 61425548 or "61425548"
  :user_name field constains the user name from twitch, e.g. "hiimkamiyuzu"
  """
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}

  @spec call(broadcaster_id | id, user_info) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}, user_info) do
    MyFinch.request(
      "DELETE",
      "https://api.twitch.tv/helix/schedule/segment?broadcaster_id=#{broadcaster_id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{id: id}, user_info) do
    MyFinch.request(
      "DELETE",
      "https://api.twitch.tv/helix/schedule/segment?id=#{id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
