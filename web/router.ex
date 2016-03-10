defmodule You2.Router do
  use You2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", You2 do
    pipe_through :browser # Use the default browser stack

    get "/",       PageController, :index
    get "/update", PageController, :update
    get "/loaderio-89d717ba1703890196a4f6fd660df6a7", PageController, :loaderio
  end

  # Other scopes may use custom stacks.
  # scope "/api", You2 do
  #   pipe_through :api
  # end
end
