defmodule TwitchApi.Extensions.GetExtensionConfigurationSegment do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This example gets the global configuration segment from the specified extension. Because the request gets the global segment, it must not include the broadcaster_id query parameter.
  The following example shows a global segment that contains a plain text string in the content field.
  The following example shows a global segment that contains a string-encoded JSON object in the content field.

  ### requests:

  curl -X GET 'https://api.twitch.tv/helix/extensions/configurations?extension_id=<your extension id>&segment=global'  
   -H'Authorization: Bearer <your JWT token>'  
   -H'Client-Id: <your client ID>'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"segment":"global","content":"{\"foo\":\"bar\"}","version":"0.0.1"}]}
  content
  {"data":[{"segment":"global","content":"hello config!","version":"0.0.1"}]}
  content
  broadcaster_id


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  NEW Gets the specified configuration segment from the specified extension.

  ### Required authentication:

  """

  # The ID of the broadcaster for the configuration returned. This parameter is required if you set the segment parameter to broadcaster or developer. Do not specify this parameter if you set segment to global.
  @type broadcaster_id :: %{required(:broadcaster_id) => String.t()}
  # The ID of the extension that contains the configuration segment you want to get.
  @type extension_id :: %{required(:extension_id) => String.t()}
  # The type of configuration segment to get. Valid values are: broadcasterdeveloperglobalYou may specify one or more segments. To specify multiple segments, include the segment parameter for each segment to get. For example, segment=broadcaster&segment=developer.
  @type segment :: %{required(:segment) => String.t()}

  @spec call(broadcaster_id | extension_id | segment) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/extensions/configurations?broadcaster_id=#{broadcaster_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{extension_id: extension_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/extensions/configurations?extension_id=#{extension_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{segment: segment}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/extensions/configurations?segment=#{segment}",
      Headers.config_headers(),
      nil
    )
  end
end
