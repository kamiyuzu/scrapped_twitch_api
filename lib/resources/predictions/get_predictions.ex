defmodule TwitchApi.Predictions.GetPredictions do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Returns information for a specific Prediction created for the TwitchDev channel.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/predictions?broadcaster_id=55696719&id=d6676d5c-c86e-44d2-bfc4-100fb48f0656'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"id":"d6676d5c-c86e-44d2-bfc4-100fb48f0656","broadcaster_id":"55696719","broadcaster_name":"TwitchDev","broadcaster_login":"twitchdev","title":"Will there be any leaks today?","winning_outcome_id":null,"outcomes":[{"id":"021e9234-5893-49b4-982e-cfe9a0aaddd9","title":"Yes","users":0,"channel_points":0,"top_predictors":null,"color":"BLUE"},{"id":"ded84c26-13cb-4b48-8cb5-5bae3ec3a66e","title":"No","users":0,"channel_points":0,"top_predictors":null,"color":"PINK"}],"prediction_window":600,"status":"ACTIVE","created_at":"2021-04-28T16:03:06.320848689Z","ended_at":null,"locked_at":null}],"pagination":{}}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  NEW Get information about all Channel Points Predictions or specific Channel Points Predictions for a Twitch channel.

  ### Required authentication:


  ### Required authorization:
  User OAuth tokenRequired scope: channel:read:predictions
  """

  # The broadcaster running Predictions. Provided broadcaster_id must match the user_id in the user OAuth token.Maximum: 1
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}
  # ID of a Prediction. Filters results to one or more specific Predictions. Not providing one or more IDs will return the full list of Predictions for the authenticated channel.Maximum: 100
  @type id :: %{required(:id) => String.t()}
  # Cursor for forward pagination: tells the server where to start fetching the next set of results in a multi-page response. The cursor value specified here is from the pagination response field of a prior query.
  @type after_query_param :: %{required(:after_query_param) => String.t()}
  # Maximum number of objects to return.Maximum: 20. Default: 20.
  @type first :: %{required(:first) => String.t()}

  # Map containing the user needed information for the user OAuth access token fetch
  @type user_info :: %{user_id: integer | binary} | %{user_name: binary}
  @spec call(broadcaster_id | id | after_query_param | first, user_info) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/predictions?broadcaster_id=#{broadcaster_id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{id: id}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/predictions?id=#{id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{after: after_query_param}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/predictions?after=#{after_query_param}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{first: first}, user_info) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/predictions?first=#{first}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
