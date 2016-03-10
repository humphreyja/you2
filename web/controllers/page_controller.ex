defmodule You2.PageController do
  use You2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def loaderio(conn, _params) do
    text conn, "loaderio-89d717ba1703890196a4f6fd660df6a7"
  end

  def update(conn, _params) do
    render conn, "update.html"
  end
end
