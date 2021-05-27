defmodule Postgres.Application do
  use Application

  def start(_type, _args) do 
    children = [Postgres.Repo]
    Supervisor.start_link(children, 
                          strategy: one_for_one, 
                          name:Postgres.Supervisor)
  end
end