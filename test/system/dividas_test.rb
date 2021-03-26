require "application_system_test_case"

class DividasTest < ApplicationSystemTestCase
  setup do
    @divida = dividas(:one)
  end

  test "visiting the index" do
    visit dividas_url
    assert_selector "h1", text: "Dividas"
  end

  test "creating a Divida" do
    visit dividas_url
    click_on "New Divida"

    fill_in "Cliente", with: @divida.cliente_id
    fill_in "Descricao", with: @divida.descricao
    fill_in "Preco", with: @divida.preco
    click_on "Create Divida"

    assert_text "Divida was successfully created"
    click_on "Back"
  end

  test "updating a Divida" do
    visit dividas_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @divida.cliente_id
    fill_in "Descricao", with: @divida.descricao
    fill_in "Preco", with: @divida.preco
    click_on "Update Divida"

    assert_text "Divida was successfully updated"
    click_on "Back"
  end

  test "destroying a Divida" do
    visit dividas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Divida was successfully destroyed"
  end
end
