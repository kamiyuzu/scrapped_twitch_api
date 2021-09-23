defmodule TwitchApi.ApiJson.Template.Method.Headers do
  @moduledoc """
  Provides the methods headers template for a twitch api item module
  """
  alias TwitchApi.ApiJson.Item
  alias TwitchApi.ApiJson.Template.Method.Args

  @doc """
  Provides the twitch api Elixir headers method for a twitch api item
  """
  @spec get_headers(Item.t()) :: String.t()
  def get_headers(item) do
    item
    |> valid_item?
    |> parse_headers()
  end

  defp valid_item?(item), do: Args.authorization(item) or Args.authentication(item)

  defp parse_headers(true), do: ",\n    Headers.config_headers()"
  defp parse_headers(false), do: ",\n    []"

  @doc """
  Parses the twitch api Elixir body_params method for a twitch api item
  """
  @spec parse_method_params(String.t()) :: parsed_method_params :: String.t()
  def parse_method_params(method_params) do
    case method_params do
      "" -> ""
      method_params -> "(" <> method_params <> ")"
    end
  end

  @doc """
  Configures the headers for the Finch request
  """
  @spec config_headers :: headers :: [{binary, binary}]
  def config_headers do
    wrapped_authorization = fn -> System.fetch_env!("authorization") end
    wrapped_client_id = fn -> System.fetch_env!("client_id") end

    [
      {"Authorization", "Bearer " <> wrapped_authorization.()},
      {"Client-Id", wrapped_client_id.()}
    ]
  end
end
