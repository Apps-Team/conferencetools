defmodule EventsToolsWeb.SignupController do
  use EventsToolsWeb, :controller

  def new(conn, _params, current_user, claims) do
    render conn, "new.html", current_user: current_user, claims: claims
  end
end
