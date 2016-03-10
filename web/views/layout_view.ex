defmodule You2.LayoutView do
  use You2.Web, :view

  def body_class(conn) do
    "#{controller_name(conn)} #{action_name(conn)}"
    |> (&Regex.replace(~r{([a-z\d])([A-Z])}, &1, "\\1_\\2")).()
    |> String.downcase
    |> String.replace("_", "-")
    |> String.replace("-controller", "")
  end

  def action_name(conn) do
    action_name = conn
    |> Phoenix.Controller.action_name
    |> to_string

    case action_name do
      "create" -> "new"
      "update" -> "edit"
      _        -> action_name
    end
  end

  def controller_name(conn) do
    conn
    |> Phoenix.Controller.controller_module
    |> to_string
    |> (&String.split(&1, ".")).()
    |> (&List.delete_at(&1, 0)).()
    |> (&Enum.join(&1, " ")).()
  end
end
