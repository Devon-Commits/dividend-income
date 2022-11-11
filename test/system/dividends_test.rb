require "application_system_test_case"

class DividendsTest < ApplicationSystemTestCase
  setup do
    @dividend = dividends(:one)
  end

  test "visiting the index" do
    visit dividends_url
    assert_selector "h1", text: "Dividends"
  end

  test "should create dividend" do
    visit dividends_url
    click_on "New dividend"

    fill_in "Div amount", with: @dividend.div_amount
    fill_in "Div total", with: @dividend.div_total
    fill_in "Stock name", with: @dividend.stock_name
    fill_in "Stock owned", with: @dividend.stock_owned
    fill_in "Stock symbol", with: @dividend.stock_symbol
    click_on "Create Dividend"

    assert_text "Dividend was successfully created"
    click_on "Back"
  end

  test "should update Dividend" do
    visit dividend_url(@dividend)
    click_on "Edit this dividend", match: :first

    fill_in "Div amount", with: @dividend.div_amount
    fill_in "Div total", with: @dividend.div_total
    fill_in "Stock name", with: @dividend.stock_name
    fill_in "Stock owned", with: @dividend.stock_owned
    fill_in "Stock symbol", with: @dividend.stock_symbol
    click_on "Update Dividend"

    assert_text "Dividend was successfully updated"
    click_on "Back"
  end

  test "should destroy Dividend" do
    visit dividend_url(@dividend)
    click_on "Destroy this dividend", match: :first

    assert_text "Dividend was successfully destroyed"
  end
end
