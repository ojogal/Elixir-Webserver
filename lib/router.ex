defmodule Webserver.Router do
  use Phoenix.Router

  pipeline :browser do
    plug(:accepts, ["html"])
  end

  scope "/", Webserver do
    pipe_through(:browser)

    get("/", Controller, :index)
    get("/favicon.ico", Controller, :index)
  end
end
