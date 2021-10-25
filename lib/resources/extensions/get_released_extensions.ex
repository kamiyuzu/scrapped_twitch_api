defmodule TwitchApi.Extensions.GetReleasedExtensions do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/extensions/released?extension_version=0.0.9&extension_id=uo6dggojyb8d6soh92zknwmi5ej1q2'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"author_name":"Twitch Developer Experience","bits_enabled":true,"can_install":false,"configuration_location":"hosted","description":"An extension for testing all the features that we add to extensions","eula_tos_url":"","has_chat_support":true,"icon_url":"https://extensions-discovery-images.twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.8/logob6c995d8-8b45-48cc-a748-b256e92ac1cd","icon_urls":{"100x100":"https://extensions-discovery-images.twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.8/logob6c995d8-8b45-48cc-a748-b256e92ac1cd","24x24":"https://extensions-discovery-images.twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.8/taskbar905b19da-e7e5-4d8f-beb7-f543a861ac1e","300x200":"https://extensions-discovery-images.twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.8/discoveryd9545b2c-5474-46d7-a523-1c3835d862ce"},"id":"pgn0bjv51epi7eaekt53tovjnc82qo","name":"Official Developer Experience Demo","privacy_policy_url":"","request_identity_link":true,"screenshot_urls":["https://extensions-discovery-images.twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.8/screenshotbdec475d-3d2f-4378-b334-941dfddc897a"],"state":"Released","subscriptions_support_level":"optional","summary":"Test ALL the extensions features!","support_email":"dx-extensions-test-dev@justin.tv","version":"0.0.9","viewer_summary":"Test ALL the extensions features!","views":{"mobile":{"viewer_url":"https://pgn0bjv51epi7eaekt53tovjnc82qo.ext-twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.9/f9a0d8aae0f9dd0b2d6ef3416b96bc79/index.html"},"panel":{"viewer_url":"https://pgn0bjv51epi7eaekt53tovjnc82qo.ext-twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.9/f9a0d8aae0f9dd0b2d6ef3416b96bc79/index.html","height":300,"can_link_external_content":false},"video_overlay":{"viewer_url":"https://pgn0bjv51epi7eaekt53tovjnc82qo.ext-twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.9/f9a0d8aae0f9dd0b2d6ef3416b96bc79/index.html","can_link_external_content":false},"component":{"viewer_url":"https://pgn0bjv51epi7eaekt53tovjnc82qo.ext-twitch.tv/pgn0bjv51epi7eaekt53tovjnc82qo/0.0.9/f9a0d8aae0f9dd0b2d6ef3416b96bc79/index.html","aspect_width":0,"aspect_height":0,"aspect_ratio_x":48000,"aspect_ratio_y":36000,"autoscale":true,"scale_pixels":1024,"target_height":5333,"size":0,"zoom":false,"zoom_pixels":0,"can_link_external_content":false}},"allowlisted_config_urls":[],"allowlisted_panel_urls":[]}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  NEW Gets information about a released Extension; either the current version or a specified version.

  ### Required authentication:


  ### Required authorization:
  User OAuth Token or App Access Token
  """

  # ID of the Extension.
  @type extension_id :: %{required(:extension_id) => String.t()}
  # The specific version of the Extension to return. If not provided, the current version is returned.
  @type extension_version :: %{required(:extension_version) => String.t()}

  @spec call(extension_id | extension_version) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{extension_id: extension_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/extensions/released?extension_id=#{extension_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{extension_version: extension_version}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/extensions/released?extension_version=#{extension_version}",
      Headers.config_headers(),
      nil
    )
  end
end
