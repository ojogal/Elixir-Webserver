defmodule Webserver.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Webserver.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Webserver.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
