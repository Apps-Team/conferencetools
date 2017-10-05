defmodule EventsToolsWeb.AdminController do
  use EventsToolsWeb, :controller

  def admin(conn, _params) do
      render conn, "dashboard.html"
  end

end
