defmodule TwitchApi.EventSub.CreateEventSubSubscription do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example adds a user.update subscription.
  
  ### requests:
  curl -X POST 'https://api.twitch.tv/helix/eventsub/subscriptions'  
   -H'Authorization: Bearer 2gbdx6oar67tqtcmt49t3wpcgycthx'  
   -H'Client-Id: wbmytr93xzw8zbg0p1izqyzzc5mbiz'  
   -H'Content-Type: application/json'  
   -d'{"type":"user.update","version":"1","condition":{"user_id":"1234"},"transport":{"method":"webhook","callback":"https://this-is-a-callback.com","secret":"s3cre7"}}'
  

  ## Example response from twitch api docs:
  ### descriptions:
  
  ### responses:
  {"data":[{"id":"26b1c993-bfcf-44d9-b876-379dacafe75a","status":"webhook_callback_verification_pending","type":"user.update","version":"1","condition":{"user_id":"1234"},"created_at":"2020-11-10T14:32:18.730260295Z","transport":{"method":"webhook","callback":"https://this-is-a-callback.com"},"cost":1}],"total":1,"total_cost":1,"max_total_cost":10000}
  # Twitch CLI example that adds a user.update subscription.
  
  twitch api post /eventsub/subscriptions -b'{"type":"user.update","version":"1","condition":{"user_id":"1234"},"transport":{"method":"webhook","callback":"https://this-is-a-callback.com","secret":"s3cre7"}}'
  

  """

  alias TwitchApi.MyFinch


  @doc """
  ### Description:
  Creates an EventSub subscription.

  ### Required authentication:
  Requires an application OAuth access token.
  """

  @spec call(%{required(:condition) => String.t(), # The parameter values that are specific to the specified subscription type.
    required(:transport) => String.t(), # The transport details such as the transport method and callback URL that you want Twitch to use when sending you notifications.
    required(:type) => String.t(), # The type of subscription to create. For a list of subscriptions you can create see Subscription Types. Set type to the value in the Name column of the Subscription Types table.
    required(:version) => String.t(), # The version of the subscription type used in this request. A subscription type could define one or more object definitions so you need to specify which definition you’re using.
    }| nil) :: {:ok, Finch.Response.t} | {:error, Exception.t}
  def call(body_params) do
    MyFinch.request("POST","https://api.twitch.tv/helix/eventsub/subscriptions",
    TwitchApi.ApiJson.Template.Method.Headers.config_headers(), body_params)
  end

end
