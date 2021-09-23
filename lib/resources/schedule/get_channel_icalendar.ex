defmodule TwitchApi.Schedule.GetChanneliCalendar do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  Returns all scheduled broadcasts from the TwitchDev channel’s stream schedule as an iCalendar.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/schedule/icalendar?broadcaster_id=141981764'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  BEGIN:VCALENDAR
  PRODID:-//twitch.tv//StreamSchedule//1.0
  VERSION:2.0
  CALSCALE:GREGORIAN
  REFRESH-INTERVAL;VALUE=DURATION:PT1H
  NAME:TwitchDev
  BEGIN:VEVENT
  UID:e4acc724-371f-402c-81ca-23ada79759d4
  DTSTAMP:20210323T040131Z
  DTSTART;TZID=/America/New_York:20210701T140000
  DTEND;TZID=/America/New_York:20210701T150000
  SUMMARY:TwitchDev Monthly Update // July 1, 2021
  DESCRIPTION:Science & Technology.
  CATEGORIES:Science & Technology
  END:VEVENT
  END:VCALENDAR%



  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  NEW Gets all scheduled broadcasts from a channel’s stream schedule as an iCalendar.

  ### Required authentication:

  """

  # User ID of the broadcaster who owns the channel streaming schedule.Maximum: 1
  @typep broadcaster_id :: %{required(:broadcaster_id) => String.t()}

  @spec call(broadcaster_id) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{broadcaster_id: broadcaster_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/schedule/icalendar?broadcaster_id=#{broadcaster_id}",
      Headers.config_headers(),
      nil
    )
  end
end
