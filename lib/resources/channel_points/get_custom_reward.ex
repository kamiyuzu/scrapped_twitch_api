defmodule TwitchApi.ChannelPoints.GetCustomReward do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This request lists custom rewards:
  This request lists custom rewards that the calling Client ID can manage:
  This request bulk-gets custom rewards.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/channel_points/custom_rewards?broadcaster_id=274637212&id=92af127c-7326-4483-a52b-b0da0be61c01'-H'Client-Id: gx2pv4208cff0ig9ou7nk3riccffxt'  
   -H'Authorization: Bearer vjxv3i0l4zxru966wsnwji51tmpkj2'​​​​​​​​​​​​​​

  curl -X GET 'https://api.twitch.tv/helix/channel_points/custom_rewards?broadcaster_id=274637212&only_manageable_rewards=true'-H'Client-Id: gx2pv4208cff0ig9ou7nk3riccffxt'  
   -H'Authorization: Bearer vjxv3i0l4zxru966wsnwji51tmpkj2'​​​​​​​

  curl -X GET 'https://api.twitch.tv/helix/channel_points/custom_rewards?broadcaster_id=274637212'-H'Client-Id: gx2pv4208cff0ig9ou7nk3riccffxt'  
   -H'Authorization: Bearer vjxv3i0l4zxru966wsnwji51tmpkj2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"broadcaster_name":"torpedo09","broadcaster_id":"274637212","id":"92af127c-7326-4483-a52b-b0da0be61c01","image":null,"background_color":"#00E5CB","is_enabled":true,"cost":50000,"title":"game analysis","prompt":"","is_user_input_required":false,"max_per_stream_setting":{"is_enabled":false,"max_per_stream":0},"max_per_user_per_stream_setting":{"is_enabled":false,"max_per_user_per_stream":0},"global_cooldown_setting":{"is_enabled":false,"global_cooldown_seconds":0},"is_paused":false,"is_in_stock":true,"default_image":{"url_1x":"https://static-cdn.jtvnw.net/custom-reward-images/default-1.png","url_2x":"https://static-cdn.jtvnw.net/custom-reward-images/default-2.png","url_4x":"https://static-cdn.jtvnw.net/custom-reward-images/default-4.png"},"should_redemptions_skip_request_queue":false,"redemptions_redeemed_current_stream":null,"cooldown_expires_at":null}]}
  {"data":[{"broadcaster_name":"torpedo09","broadcaster_id":"274637212","id":"92af127c-7326-4483-a52b-b0da0be61c01","image":null,"background_color":"#00E5CB","is_enabled":true,"cost":50000,"title":"game analysis","prompt":"","is_user_input_required":false,"max_per_stream_setting":{"is_enabled":false,"max_per_stream":0},"max_per_user_per_stream_setting":{"is_enabled":false,"max_per_user_per_stream":0},"global_cooldown_setting":{"is_enabled":false,"global_cooldown_seconds":0},"is_paused":false,"is_in_stock":true,"default_image":{"url_1x":"https://static-cdn.jtvnw.net/custom-reward-images/default-1.png","url_2x":"https://static-cdn.jtvnw.net/custom-reward-images/default-2.png","url_4x":"https://static-cdn.jtvnw.net/custom-reward-images/default-4.png"},"should_redemptions_skip_request_queue":false,"redemptions_redeemed_current_stream":null,"cooldown_expires_at":null}]}
  {"data":[{"broadcaster_name":"torpedo09","broadcaster_login":"torpedo09","broadcaster_id":"274637212","id":"92af127c-7326-4483-a52b-b0da0be61c01","image":null,"background_color":"#00E5CB","is_enabled":true,"cost":50000,"title":"game analysis","prompt":"","is_user_input_required":false,"max_per_stream_setting":{"is_enabled":false,"max_per_stream":0},"max_per_user_per_stream_setting":{"is_enabled":false,"max_per_user_per_stream":0},"global_cooldown_setting":{"is_enabled":false,"global_cooldown_seconds":0},"is_paused":false,"is_in_stock":true,"default_image":{"url_1x":"https://static-cdn.jtvnw.net/custom-reward-images/default-1.png","url_2x":"https://static-cdn.jtvnw.net/custom-reward-images/default-2.png","url_4x":"https://static-cdn.jtvnw.net/custom-reward-images/default-4.png"},"should_redemptions_skip_request_queue":false,"redemptions_redeemed_current_stream":null,"cooldown_expires_at":null}]}


  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  Returns a list of Custom Reward objects for the Custom Rewards on a channel.

  ### Required authentication:
  User OAuth token
  Required scope: channel:read:redemptions
  """

  # Provided broadcaster_id must match the user_id in the user OAuth token.
  @typep broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @spec call(broadcaster_id) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/channel_points/custom_rewards?broadcaster_id=#{broadcaster_id}",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      nil
    )
  end
end
