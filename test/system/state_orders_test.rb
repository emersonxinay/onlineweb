require "application_system_test_case"

class StateOrdersTest < ApplicationSystemTestCase
  setup do
    @state_order = state_orders(:one)
  end

  test "visiting the index" do
    visit state_orders_url
    assert_selector "h1", text: "State Orders"
  end

  test "creating a State order" do
    visit state_orders_url
    click_on "New State Order"

    fill_in "Name", with: @state_order.name
    click_on "Create State order"

    assert_text "State order was successfully created"
    click_on "Back"
  end

  test "updating a State order" do
    visit state_orders_url
    click_on "Edit", match: :first

    fill_in "Name", with: @state_order.name
    click_on "Update State order"

    assert_text "State order was successfully updated"
    click_on "Back"
  end

  test "destroying a State order" do
    visit state_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State order was successfully destroyed"
  end
end
