defmodule TwitchApi.Extensions.SetExtensionRequiredConfiguration do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:

  ### requests:
  curl -X PUT 'https://api.twitch.tv/helix/extensions/required_configuration?broadcaster_id=274637212'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'  
   -d'{
    "required_configuration": "RCS",
    "extension_id": "uo6dggojyb8d6soh92zknwmi5ej1q2",
    "extension_version": "0.0.1"
   }'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  204NoContent


  """

  alias TwitchApi.MyFinch

  @doc """
  ### Description:
  NEW Enable activation of a specified Extension, after any required broadcaster configuration is correct.

  ### Required authentication:

  """

  # User ID of the broadcaster who has activated the specified Extension on their channel.
  @typep broadcaster_id :: %{required(:broadcaster_id) => String.t()}
  # The version of the configuration to use with the Extension.
  @typep body_params ::
           %{
             required(:configuration_version) => String.t(),
             # ID for the Extension to activate.
             required(:extension_id) => String.t(),
             # The version fo the Extension to release.
             required(:extension_version) => String.t()
           }
           | nil
  @spec call(broadcaster_id, body_params) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}, body_params) do
    MyFinch.request(
      "PUT",
      "https://api.twitch.tv/helix/extensions/required_configuration?broadcaster_id=#{
        broadcaster_id
      }",
      TwitchApi.ApiJson.Template.Method.Headers.config_headers(),
      body_params
    )
  end
end
