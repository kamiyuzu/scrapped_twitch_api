# TwitchApi

This library provides an Elixir library for twitch API. It makes use of an Elixir scrapper for [Twitch API](https://github.com/kamiyuzu/twitch_api_scraper).

## Library configuration

For making use of this library you will need to create a `.env` with the env vars from the `.env_example`. The env vars needed have to be fetched from [twitch developer documentation](https://dev.twitch.tv/docs/api).

In the [.env](.env) file environment vars needs to be defined for usage. Those need to be loaded when working with this project. To do so, one can manually execute:

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

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `twitch_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:twitch_api, "~> 0.1.0"}
  ]
end
```

Docs can be found at [https://hexdocs.pm/twitch_api](https://hexdocs.pm/twitch_api).

