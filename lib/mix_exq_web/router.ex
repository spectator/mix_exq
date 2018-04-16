defmodule MixExqWeb.Router do
  use MixExqWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MixExqWeb do
    pipe_through :api
  end
end
