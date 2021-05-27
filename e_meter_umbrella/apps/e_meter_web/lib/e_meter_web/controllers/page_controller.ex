defmodule EMeterWeb.PageController do
  use EMeterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
