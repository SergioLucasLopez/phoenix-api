defmodule PhoenixApi.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_api,
    adapter: Ecto.Adapters.SQLite3
end
