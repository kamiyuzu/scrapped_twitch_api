defmodule TwitchApi.EventSub.GetEventSubSubscriptions do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Gets a list of your EventSub subscriptions. The list is paginated and ordered by the oldest subscription first.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/eventsub/subscriptions'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"total":2,"data":[{"id":"26b1c993-bfcf-44d9-b876-379dacafe75a","status":"enabled","type":"stream.online","version":"1","condition":{"broadcaster_user_id":"1234"},"created_at":"2020-11-10T20:08:33.12345678Z","transport":{"method":"webhook","callback":"https://this-is-a-callback.com"},"cost":1},{"id":"35016908-41ff-33ce-7879-61b8dfc2ee16","status":"webhook-callback-verification-pending","type":"user.update","version":"1","condition":{"user_id":"1234"},"created_at":"2020-11-10T14:32:18.730260295Z","transport":{"method":"webhook","callback":"https://this-is-a-callback.com"},"cost":0}],"total_cost":1,"max_total_cost":10000,"pagination":{}}
  # Twitch CLI example that gets your EventSub subscriptions.

  twitch api get /eventsub/subscriptions 



  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets a list of your EventSub subscriptions. The list is paginated and ordered by the oldest subscription first.

  ### Required authentication:
  Requires an application OAuth access token.
  """

  # Filter subscriptions by its status. You may specify only one status value. Valid values are: enabled — The subscription is enabled.webhook_callback_verification_pending — The subscription is pending verification of the specified callback URL.webhook_callback_verification_failed — The specified callback URL failed verification.notification_failures_exceeded — The notification delivery failure rate was too high.authorization_revoked — The authorization was revoked for one or more users specified in the Condition object.user_removed — One of the users specified in the Condition object was removed.
  @type status :: %{required(:status) => String.t()}
  # Filter subscriptions by subscription type (e.g., channel.update). For a list of subscription types, see Subscription Types.
  @type type :: %{required(:type) => String.t()}
  # The cursor used to get the next page of results. The pagination object in the response contains the cursor’s value.
  @type after_query_param :: %{required(:after_query_param) => String.t()}

  @spec call(status | type | after_query_param) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{status: status}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/eventsub/subscriptions?status=#{status}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{type: type}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/eventsub/subscriptions?type=#{type}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{after: after_query_param}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/eventsub/subscriptions?after=#{after_query_param}",
      Headers.config_headers(),
      nil
    )
  end
end
