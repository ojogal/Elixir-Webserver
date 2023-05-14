defmodule Webserver.Endpoint do
  use Phoenix.Endpoint, otp_app: :webserver
  plug(Webserver.Router)
end
