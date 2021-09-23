defmodule TwitchApi.Analytics.GetGameAnalytics do
  @moduledoc """
  ⛔ This module is autogenerated please do not modify manually.

  ## Example request from twitch api docs:
  ### descriptions:
  This gets the URL for a downloadable CSV report for game ID 493057, covering the period January 1, 2018 to March 1, 2018.
  This gets the first 5 URLs (paginated) for all reports for all games of the authenticated client. The request is issued on June 14, 2018.

  ### requests:
  curl -X GET 'https://api.twitch.tv/helix/analytics/games?first=5'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'
  curl -X GET 'https://api.twitch.tv/helix/analytics/games?game_id=493057&started_at=2018-01-01T00:00:00Z&ended_at=2018-03-01T00:00:00Z'  
   -H'Authorization: Bearer cfabdegwdoklmawdzdo98xt2fo512y'  
   -H'Client-Id: uo6dggojyb8d6soh92zknwmi5ej1q2'


  ## Example response from twitch api docs:
  ### descriptions:

  ### responses:
  {"data":[{"game_id":"9821","URL":"https://twitch-piper-reports.s3-us-west-2.amazonaws.com/games/9821/overview/1526428800000.csv?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAJQ4MLJCNPIYDOZ4Q%2F20180517%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20180517T231129Z&X-Amz-Expires=60&X-Amz-Security-Token=FQoDYXdzEK7%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDD0JCM06UswayN4iVyK3AzIiwI0Qf4KRs2yk9nCiocQOwmMWa7FPJnJEd%2FIxljnmZy%2BphQEEWN3%2Bt8k06wZysfPHvW71zcrIeclv11kNtXaYojC%2FHVKJWO8EnicIQE73kokr16fkf1Q4eglQBuu56jJQoTsEn2UkgZff9XHx69LyFvLYf33ue10CjeJE1bY65%2B6LtcPKciJK%2FNRS1TyUsz%2FiQjyxMEUpAKm39HxNtNKFM5xehjAoWC1KfJc52XVQGFO%2Fm2EQiJj6RoifNkiIQKb4m7nGr86zvIQKDQcxcpVbiGNEcC8UugZgCnuspSPjuJLARb%2BNT%2FjLKopd2%2FUKDlIY%2BAoyEk%2B%2FGIWL5TgvjjmT5uaJ5AcnTm4b7DlV%2FkmDsYHFQez0Mu4%2BwoujZEqR0K%2BtDSyAvva2nUUGabZuDeaaiQD4JfrokXC5GWtninHQCAoPiC4q%2FMYkHS82wxPjJp0l4cStwzEDQ5LJ4cehKm4tCoY1m1whWIJsNuyfLtIUH2rBTuF9D5DFmsmpXiKc4LE9saQgSlLwNBEGASqAbRuy7Tc2ZlcIp1lBllioxhoYL3XcjaXOX3qluWGMwgXdV2Odq0L03MkoxuL31wU%3D&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3Bfilename%3D%22Heroes%20of%20Might%20and%20Magic%20IV-overview_v1-2018-05-16.csv%22&X-Amz-Signature=47af9a041970244b51fa6dd6a31d78ae9ff56a4db76a54d3e1b8a7ec4631defa","type":"overview_v2","date_range":{"started_at":"2018-03-13T00:00:00Z","ended_at":"2018-06-13T00:00:00Z"}},...],"pagination":{"cursor":"eyJiIjpudWxsLJxhIjoiIn0gf5"}}
  {"data":[{"game_id":"493057","URL":"https://twitch-piper-reports.s3-us-west-2.amazonaws.com/games/66170/overview/1518307200000.csv?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAJP7WFIAF26K7BC2Q%2F20180222%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20180222T220651Z&X-Amz-Expires=60&X-Amz-Security-Token=FQoDYXdzEE0aDLKNl9aCgfuikMKI%2ByK3A4e%2FR%2B4to%2BmRZFUuslNKs%2FOxKeySB%2BAU87PBtNGCxQaQuN2Q8KI4Vg%2Bve2x5eenZdoH0ZM7uviM94sf2GlbE9Z0%2FoJRmNGNhlU3Ua%2FupzvByCoMdefrU8Ziiz4j8EJCgg0M1j2aF9f8bTC%2BRYwcpP0kjaZooJS6RFY1TTkh659KBA%2By%2BICdpVK0fxOlrQ%2FfZ6vIYVFzvywBM05EGWX%2F3flCIW%2BuZ9ZxMAvxcY4C77cOLQ0OvY5g%2F7tuuGSO6nvm9Eb8MeMEzSYPr4emr3zIjxx%2Fu0li9wjcF4qKvdmnyk2Bnd2mepX5z%2BVejtIGBzfpk%2Fe%2FMqpMrcONynKoL6BNxxDL4ITo5yvVzs1x7OumONHcsvrTQsd6aGNQ0E3lrWxcujBAmXmx8n7Qnk4pZnHZLgcBQam1fIGba65Gf5Ern71TwfRUsolxnyIXyHsKhd2jSmXSju8jH3iohjv99a2vGaxSg8SBCrQZ06Bi0pr%2FTiSC52U1g%2BlhXYttdJB4GUdOvaxR8n6PwMS7HuAtDJUui8GKWK%2F9t4OON3qhF2cBt%2BnV%2BDg8bDMZkQ%2FAt5blvIlg6rrlCu0cYko4ojb281AU%3D&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3Bfilename%3DWarframe-overview-2018-02-11.csv&X-Amz-Signature=49cc07cbd9d753b00315b66f49b9e4788570062ff3bd956288ab4f164cf96708","type":"overview_v2","date_range":{"started_at":"2018-01-01T00:00:00Z","ended_at":"2018-03-01T00:00:00Z"}}]}


  """

  alias TwitchApi.MyFinch
  alias TwitchApi.ApiJson.Template.Method.Headers

  @doc """
  ### Description:
  Gets a URL that game developers can use to download analytics reports (CSV files) for their games. The URL is valid for 5 minutes.

  ### Required authentication:
  OAuth token required
  Required scope: analytics:read:games
  """

  # Cursor for forward pagination: tells the server where to start fetching the next set of results, in a multi-page response. This applies only to queries without game_id. If a game_id is specified, it supersedes any cursor/offset combinations. The cursor value specified here is from the pagination response field of a prior query.
  @type after_query_param :: %{required(:after_query_param) => String.t()}
  # Ending date/time for returned reports, in RFC3339 format with the hours, minutes, and seconds zeroed out and the UTC timezone: YYYY-MM-DDT00:00:00Z. The report covers the entire ending date; e.g., if 2018-05-01T00:00:00Z is specified, the report covers up to 2018-05-01T23:59:59Z.If this is provided, started_at also must be specified. If ended_at is later than the default end date, the default date is used. Default: 1-2 days before the request was issued (depending on report availability).
  @type ended_at :: %{required(:ended_at) => String.t()}
  # Maximum number of objects to return. Maximum: 100. Default: 20.
  @type first :: %{required(:first) => integer}
  # Game ID. If this is specified, the returned URL points to an analytics report for just the specified game. If this is not specified, the response includes multiple URLs (paginated), pointing to separate analytics reports for each of the authenticated user’s games.
  @type game_id :: %{required(:game_id) => String.t()}
  # Starting date/time for returned reports, in RFC3339 format with the hours, minutes, and seconds zeroed out and the UTC timezone: YYYY-MM-DDT00:00:00Z.If this is provided, ended_at also must be specified. If started_at is earlier than the default start date, the default date is used. Default: 365 days before the report was issued. The file contains one row of data per day.
  @type started_at :: %{required(:started_at) => String.t()}
  # Type of analytics report that is returned. Currently, this field has no affect on the response as there is only one report type. If additional types were added, using this field would return only the URL for the specified report. Limit: 1. Valid values: "overview_v2".
  @type type :: %{required(:type) => String.t()}

  @spec call(after_query_param | ended_at | first | game_id | started_at | type) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def call(%{after: after_query_param}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/analytics/games?after=#{after_query_param}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{ended_at: ended_at}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/analytics/games?ended_at=#{ended_at}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{first: first}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/analytics/games?first=#{first}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{game_id: game_id}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/analytics/games?game_id=#{game_id}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{started_at: started_at}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/analytics/games?started_at=#{started_at}",
      Headers.config_headers(),
      nil
    )
  end

  def call(%{type: type}) do
    MyFinch.request(
      "GET",
      "https://api.twitch.tv/helix/analytics/games?type=#{type}",
      Headers.config_headers(),
      nil
    )
  end
end
