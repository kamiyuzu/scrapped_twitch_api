# TwitchApi

[![CI](https://github.com/kamiyuzu/scrapped_twitch_api/actions/workflows/elixir_cd.yml/badge.svg)](https://github.com/kamiyuzu/twitch_api_scraper/actions/workflows/elixir_cd.yml/badge.svg)
[![CI](https://github.com/kamiyuzu/scrapped_twitch_api/actions/workflows/elixir_ci.yml/badge.svg)](https://github.com/kamiyuzu/twitch_api_scraper/actions/workflows/elixir_ci.yml/badge.svg)
![GitHub](https://img.shields.io/github/license/kamiyuzu/twitch_api_scraper)
[![Hexdocs.pm](https://img.shields.io/badge/hexdocs-online-blue)](https://hexdocs.pm/scrapped_twitch_api/)
[![Hex.pm](https://img.shields.io/hexpm/v/scrapped_twitch_api.svg)](https://hex.pm/packages/scrapped_twitch_api)
<!--- [![Hex.pm Downloads](https://img.shields.io/hexpm/dt/scrapped_twitch_api)](https://hex.pm/packages/scrapped_twitch_api) -->

This library provides an Elixir library for twitch API. It makes use of an Elixir scrapper for [Twitch API](https://github.com/kamiyuzu/twitch_api_scraper).

## Library configuration

For making use of this library you will need to create a `.env` with the env vars from the [`.env_example`](.env_example). The env vars needed have to be fetched from [twitch developer documentation](https://dev.twitch.tv/docs/api).

In the [`.env`](.env) file environment vars needs to be defined for usage. Those need to be loaded when working with this project. To do so, one can manually execute:

```bash
source .env
```

or automate this process using [direnv](https://direnv.net/).

```bash
# Install direnv using brew
$ brew install direnv

# From the project folder
$ direnv allow
```

Continue with the instructions [here](https://github.com/direnv/direnv#setup)

## Library usage

The library provides dynamically modules for fetching all Twitch API endpoints. The convention is: `TwitchApi.<TwitchCategory>.<Action><Endpoint>`. The convention might not be a rule since Twitch reference do not follow this rule always.

We have two supported ways for dealing with Twitch API requests. In one hand we can deal through App access token requests. On the other hand we can go through OAuth access token requests.

### App access token flow:

For working with this flow you can change your application twitch scopes in the [`config/config.exs`](config/config.exs) file.
To add the scopes you seems appropriate for your application just add them into the existing list of scopes.

The scope added into the application is the default one twitch will ask for the basic actions. For more information about working with Twitch scopes please read further in: [scopes_documentation](https://dev.twitch.tv/docs/authentication/#scopes).

This is an example running iex:

```elixir
iex(1)> h TwitchApi.Users.GetUsers

                            TwitchApi.Users.GetUsers                            

⛔ This module is autogenerated please do not modify manually.

## Example request from twitch api docs:

### descriptions:

This gets information about user 141981764.

### requests:

curl -X GET 'https://api.twitch.tv/helix/users?id=141981764' -H'Authorization:
Bearer cfabdegwdoklmawdzdo98xt2fo512y' -H'Client-Id:
uo6dggojyb8d6soh92zknwmi5ej1q2'

## Example response from twitch api docs:

### descriptions:

### responses:

{"data":[{"id":"141981764","login":"twitchdev","display_name":"TwitchDev","type":"","broadcaster_type":"partner","description":"Supporting
third-party developers building Twitch integrations from chatbots to game
integrations.","profile_image_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/8a6381c7-d0c0-4576-b179-38bd5ce1d6af-profile_image-300x300.png","offline_image_url":"https://static-cdn.jtvnw.net/jtv_user_pictures/3f13ab61-ec78-4fe6-8481-8682cb3b0ac2-channel_offline_image-1920x1080.png","view_count":5980557,"email":"not-real@email.com","created_at":"2016-12-14T20:32:28Z"}]}

iex(2)> h TwitchApi.Users.GetUsers.call

                                 def call(map)                                  

  @spec call(id() | login()) ::
          {:ok, Finch.Response.t()} | {:error, Exception.t()}

### Description:

Gets information about one or more specified Twitch users. Users are identified
by optional user IDs and/or login name.

### Required authentication:

OAuth or App Access Token required.

### Required authorization:

OAuth token with user:read:email scope required to include the user’s verified
email address in response.

iex(4)> TwitchApi.Users.GetUsers.call(%{login: "hiimkamiyuzu"})
{:ok,
 %Finch.Response{
   body: "{\"data\":[{\"id\":\"61425548\",\"login\":\"hiimkamiyuzu\",\"display_name\":\"hiimkamiyuzu\",\"type\":\"\",\"broadcaster_type\":\"\",\"description\":\"\",\"profile_image_url\":\"https://static-cdn.jtvnw.net/user-default-pictures-uv/294c98b5-e34d-42cd-a8f0-140b72fba9b0-profile_image-300x300.png\",\"offline_image_url\":\"\",\"view_count\":56,\"created_at\":\"2014-04-22T20:21:11Z\"}]}",
   headers: [
     {"connection", "keep-alive"},
     {"content-length", "344"},
     {"content-type", "application/json; charset=utf-8"},
     {"access-control-allow-origin", "*"},
     {"ratelimit-limit", "800"},
     {"ratelimit-remaining", "799"},
     {"ratelimit-reset", "1635433387"},
     {"timing-allow-origin", "https://www.twitch.tv"},
     {"twitch-trace-id", "a3b64ecc00d7eeb6e4907178aed26f75"},
     {"x-ctxlog-logid", "1-617abbaa-3c3a10aa517d7b763d900346"},
     {"date", "Thu, 28 Oct 2021 15:03:07 GMT"},
     {"x-served-by", "cache-sea4446-SEA, cache-bma1646-BMA"},
     {"x-cache", "MISS, MISS"},
     {"x-cache-hits", "0, 0"},
     {"x-timer", "S1635433387.877013,VS0,VS0,VE170"},
     {"vary", "Accept-Encoding"},
     {"strict-transport-security", "max-age=300"}
   ],
   status: 200
 }}
iex(3)> t TwitchApi.Users.GetUsers.                            
id/0       login/0    
iex(4)> t TwitchApi.Users.GetUsers.id
@type id() :: %{id: String.t()}

User ID. Multiple user IDs can be specified. Limit: 100.

iex(5)> t TwitchApi.Users.GetUsers.login
@type login() :: %{login: String.t()}

User login name. Multiple login names can be specified. Limit: 100.
```

### OAuth access token flow:

We will need to configure in our application [`config/config.exs`](config/config.exs) file the callback url registered in our [twitch_dev_console](https://dev.twitch.tv/console).

First things first you will need the user to authorize your application. For this purpose you will need to make the user go through [oauth_url](http://localhost:8090/oauth?scopes[]=). You will have to specify the scopes required for that user access token as query param array values. Example: `http://localhost:8090/oauth?scopes[]=channel:read:stream_key`. For more information about working with Twitch scopes please read further in: [scopes_documentation](https://dev.twitch.tv/docs/authentication/#scopes).

For dealing with the OAuth flow we will have to specify in the `user_info` from the Twitch API requests needing OAuth. The user previously authenticated in our application ID or username is the only information needed.

```elixir
iex(1)> TwitchApi.Streams.GetStreamKey.call(%{broadcaster_id: "61425548"}, %{user_name: "hiimkamiyuzu"}) 
{:ok,
 %Finch.Response{
   body: "{\"data\":[{\"stream_key\":\"live_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\"}]}",
   headers: [
     {"connection", "keep-alive"}, 
     {"content-length", "72"},
     {"content-type", "application/json; charset=utf-8"},
     {"access-control-allow-origin", "*"},
     {"ratelimit-limit", "800"},
     {"ratelimit-remaining", "799"},
     {"ratelimit-reset", "1635445341"},
     {"timing-allow-origin", "https://www.twitch.tv"},
     {"twitch-trace-id", "dfd9e95dd1ebf728feac2ee4b3f1cdab"},
     {"x-ctxlog-logid", "1-617aea5c-2c76b5bc24bee60022f8e95b"},
     {"date", "Thu, 28 Oct 2021 18:22:20 GMT"},
     {"x-served-by", "cache-sea4427-SEA, cache-hel1410028-HEL"},
     {"x-cache", "MISS, MISS"},
     {"x-cache-hits", "0, 0"},
     {"x-timer", "S1635445340.130363,VS0,VS0,VE237"},
     {"vary", "Accept-Encoding"},
     {"strict-transport-security", "max-age=300"}
   ],
   status: 200
 }}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `scrapped_twitch_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:scrapped_twitch_api, "~> 0.1.1"}
  ]
end
```

Docs can be found at [https://hexdocs.pm/scrapped_twitch_api](https://hexdocs.pm/scrapped_twitch_api).

