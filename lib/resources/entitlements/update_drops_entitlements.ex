defmodule TwitchApi.Entitlements.UpdateDropsEntitlements do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -H PATCH 'helix/entitlements/drops'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'  
   -H'Content-Type: application/json'  
   -d'{
    "fulfillment_status": "FULFILLED",
    "entitlement_ids": [
      "fb78259e-fb81-4d1b-8333-34a06ffc24c0",
      "862750a5-265e-4ab6-9f0a-c64df3d54dd0",
      "d8879baa-3966-4d10-8856-15fdd62cce02",
      "9a290126-7e3b-4f66-a9ae-551537893b65"
    ]
   }'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"status":"SUCCESS","ids":["fb78259e-fb81-4d1b-8333-34a06ffc24c0","862750a5-265e-4ab6-9f0a-c64df3d54dd0"]},{"status":"UNAUTHORIZED","ids":["d8879baa-3966-4d10-8856-15fdd62cce02"]},{"status":"UPDATE_FAILED","ids":["9a290126-7e3b-4f66-a9ae-551537893b65"]}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Updates the fulfillment status on a set of Drops entitlements, specified by their entitlement IDs.

  ### Required authentication:
  User OAuth Token or App Access Token
  """

  # An array of unique identifiers of the entitlements to update.Maximum: 100.
  @type entitlement_ids :: %{required(:entitlement_ids) => list}
  # A fulfillment status. Valid values are "CLAIMED" or "FULFILLED".
  @type fulfillment_status :: %{required(:fulfillment_status) => String.t()}

  @spec call(entitlement_ids | fulfillment_status) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{entitlement_ids: entitlement_ids}) do
    MyFinch.request(
      "PATCH",
      "https://api.twitch.tv/helix/entitlements/drops?entitlement_ids=#{entitlement_ids}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{fulfillment_status: fulfillment_status}) do
    MyFinch.request(
      "PATCH",
      "https://api.twitch.tv/helix/entitlements/drops?fulfillment_status=#{fulfillment_status}",
      Headers.config_headers(),
      nil
    )
  end
end
