defmodule MesaviphxWeb.RestaurantsController do
  use MesaviphxWeb, :controller
  alias HTTPoison.{Response}

  def index(conn, _params) do
    res =
      HTTPoison.get("https://mesavip-api.herokuapp.com/restaurants/list-all")
      |> json_to_map()

    render(conn, "index.html", res: [%{teste: "1"}, %{teste: "2"}])
  end

  def json_to_map({:ok, %Response{body: body} = response}) do
    {_ok_or_error, body} = Jason.decode(body)

    {:ok, Map.put(response, :body, body)}
  end
end
