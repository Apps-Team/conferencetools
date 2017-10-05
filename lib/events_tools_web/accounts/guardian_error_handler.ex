defmodule EventsTools.GuardianErrorHandler do
  #import EventsToolsWeb.Helpers

  use EventsToolsWeb, :controller


  def unauthenticated(conn, _params) do
    conn
    |> Phoenix.Controller.put_flash(:error, "You must be signed-in to access that page, please sign-in below.")
    |> redirect(to: "/sign-in")

  end
end
