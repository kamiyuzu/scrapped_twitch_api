defmodule TwitchApi.Moderation.CheckAutoModStatus.NotSupported do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Checks to see if the messages “Hello World!” and “Boooooo!” meets AutoMod requirements.

  ### requests:
  curl -X POST 'https://api.twitch.tv/helix/moderation/enforcements/status'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'  
   -d'{
    "data": [
      {
        "msg_id": "123",
        "msg_text": "Hello World!",
        "user_id": "23749"
      },
      {
        "msg_id": "393",
        "msg_text": "Boooooo!",
        "user_id": "23422"
      }
    ]
   }'


  ## Example response from twitch api docs:
  ### descriptions:
  Shows that message ID 123 meets the requirements and message ID 393 does not.

  ### responses:
  {"data":[{"msg_id":"123","is_permitted":true},{"msg_id":"393","is_permitted":false}]}


  """

  # API method not supported
end
