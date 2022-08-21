defmodule MesaviphxWeb.RestaurantsController do
  use MesaviphxWeb, :controller
  # import HTTPoison

  def index(conn, %{"a" => a}) do
    render(conn, "index.html", a: a)

    HTTPoison.get("https://mesavip-api.herokuapp.com/restaurants/list-all") |> IO.inspect()
  end
end
