defmodule TwitchApi.ChannelPoints.DeleteCustomReward do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This request deletes a custom reward:

  ### requests:
  curl -X DELETE 'https://api.twitch.tv/helix/channel_points/custom_rewards?broadcaster_id=274637212&id=b045196d-9ce7-4a27-a9b9-279ed341ab28'  
   -H'Client-Id: gx2pv4208cff0ig9ou7nk3riccffxt'  
   -H'Authorization: Bearer vjxv3i0l4zxru966wsnwji51tmpkj2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  204 No Content



  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Deletes a Custom Reward on a channel.

  ### Required authentication:
  User OAuth token
  Required scope: channel:manage:redemptions

  ### Required authorization:

  """

  @typedoc """
  Provided broadcaster_id must match the user_id in the user OAuth token.
  """
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @typedoc """
  ID of the Custom Reward to delete, must match a Custom Reward on broadcaster_id’s channel.
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
      "https://api.twitch.tv/helix/channel_points/custom_rewards?broadcaster_id=#{broadcaster_id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end

  def call(%{id: id}, user_info) do
    MyFinch.request(
      "DELETE",
      "https://api.twitch.tv/helix/channel_points/custom_rewards?id=#{id}",
      Headers.config_oauth_headers(user_info),
      nil
    )
  end
end
