defmodule TwitchApi.Entitlements.GetDropsEntitlements do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -H GET 'helix/entitlements/drops?user_id=25009227&game_id=33214'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"fb78259e-fb81-4d1b-8333-34a06ffc24c0","benefit_id":"74c52265-e214-48a6-91b9-23b6014e8041","timestamp":"2019-01-28T04:17:53.325Z","user_id":"25009227","game_id":"33214","fulfillment_status":"CLAIMED","updated_at":"2019-01-28T04:17:53.325Z"},{"id":"862750a5-265e-4ab6-9f0a-c64df3d54dd0","benefit_id":"74c52265-e214-48a6-91b9-23b6014e8041","timestamp":"2019-01-28T04:16:53.325Z","user_id":"25009227","game_id":"33214","fulfillment_status":"CLAIMED","updated_at":"2021-06-15T04:16:53.325Z"},{"id":"d8879baa-3966-4d10-8856-15fdd62cce02","benefit_id":"cdfdc5c3-65a2-43bc-8767-fde06eb4ab2c","timestamp":"2019-01-28T04:15:53.325Z","user_id":"25009227","game_id":"33214","fulfillment_status":"FULFILLED","updated_at":"2019-01-28T04:17:53.325Z"},...],"pagination":{"cursor":"eyJiIjpudW..."}}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets a list of entitlements for a given organization that have been granted to a game, user, or both.

  ### Required authentication:
  User OAuth Token or App Access Token
  """

  @spec call() :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/entitlements/drops",
      Headers.config_headers(),
      nil
    )
  end
end
