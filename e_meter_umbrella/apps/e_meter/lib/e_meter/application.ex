defmodule EMeter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: EMeter.PubSub}
      # Start a worker by calling: EMeter.Worker.start_link(arg)
      # {EMeter.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: EMeter.Supervisor)
  end
end
