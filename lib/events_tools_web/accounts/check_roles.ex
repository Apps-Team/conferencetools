defmodule EventsTools.Plug.CheckRoles do
  import Plug.Conn
  alias EventsTools.Accounts

#  def init(uid) do
    #Repo.all(from r in EventsTools.Roles.Role, where: s.id == 4)

#    query = from(r in Roles,
      #join: a in "albums", on: t.album_id == a.id,
#      join: ur in "users_roles", on: ur.user_id == uid,
#      join: r in "roles", on: ur.status_id == s.id,
#      where: s.title == ^"Published",
#      order_by: p.name_first)
#    Repo.all(query)
#    |> Repo.preload(:roles)



end
