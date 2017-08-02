defmodule NantucketWeb.PageController do
  use NantucketWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
