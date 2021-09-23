defmodule TwitchApi.Users.GetUserExtensions do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This gets installed extensions for the user identified by Bearer token cfabdegwdoklmawdzdo98xt2fo512y.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/users/extensions/list'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"wi08ebtatdc7oj83wtl9uxwz807l8b","version":"1.1.8","name":"Streamlabs Leaderboard","can_activate":true,"type":["panel"]},{"id":"d4uvtfdr04uq6raoenvj7m86gdk16v","version":"2.0.2","name":"Prime Subscription and Loot Reminder","can_activate":true,"type":["overlay"]},{"id":"rh6jq1q334hqc2rr1qlzqbvwlfl3x0","version":"1.1.0","name":"TopClip","can_activate":true,"type":["mobile","panel"]},{"id":"zfh2irvx2jb4s60f02jq0ajm8vwgka","version":"1.0.19","name":"Streamlabs","can_activate":true,"type":["mobile","overlay"]},{"id":"lqnf3zxk0rv0g7gq92mtmnirjz2cjj","version":"0.0.1","name":"Dev Experience Test","can_activate":true,"type":["component","mobile","panel","overlay"]}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets a list of all extensions (both active and inactive) for a specified user, identified by a Bearer token.

  ### Required authentication:
  OAuth token required
  Required scope: user:read:broadcast
  """

  @spec call() :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/users/extensions/list",
      Headers.config_headers(),
      nil
    )
  end
end
