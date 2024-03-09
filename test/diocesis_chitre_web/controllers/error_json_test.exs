defmodule DiocesisChitreWeb.ErrorJSONTest do
  use DiocesisChitreWeb.ConnCase, async: true

  test "renders 404" do
    assert DiocesisChitreWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert DiocesisChitreWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
