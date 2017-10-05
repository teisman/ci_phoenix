defmodule CiPhoenixWeb.Router do
  use CiPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CiPhoenixWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end
