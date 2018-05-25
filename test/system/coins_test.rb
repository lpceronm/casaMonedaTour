require "application_system_test_case"

class CoinsTest < ApplicationSystemTestCase
  setup do
    @coin = coins(:one)
  end

  test "visiting the index" do
    visit coins_url
    assert_selector "h1", text: "Coins"
  end

  test "creating a Coin" do
    visit coins_url
    click_on "New Coin"

    fill_in "Batch", with: @coin.batch
    fill_in "Country", with: @coin.country
    fill_in "Denomination", with: @coin.denomination
    fill_in "Issuer", with: @coin.issuer
    fill_in "Location", with: @coin.location
    fill_in "Material", with: @coin.material
    fill_in "Name", with: @coin.name
    fill_in "Num Record", with: @coin.num_record
    fill_in "Part Number", with: @coin.part_number
    fill_in "Quantity", with: @coin.quantity
    fill_in "Serial Number", with: @coin.serial_number
    click_on "Create Coin"

    assert_text "Coin was successfully created"
    click_on "Back"
  end

  test "updating a Coin" do
    visit coins_url
    click_on "Edit", match: :first

    fill_in "Batch", with: @coin.batch
    fill_in "Country", with: @coin.country
    fill_in "Denomination", with: @coin.denomination
    fill_in "Issuer", with: @coin.issuer
    fill_in "Location", with: @coin.location
    fill_in "Material", with: @coin.material
    fill_in "Name", with: @coin.name
    fill_in "Num Record", with: @coin.num_record
    fill_in "Part Number", with: @coin.part_number
    fill_in "Quantity", with: @coin.quantity
    fill_in "Serial Number", with: @coin.serial_number
    click_on "Update Coin"

    assert_text "Coin was successfully updated"
    click_on "Back"
  end

  test "destroying a Coin" do
    visit coins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coin was successfully destroyed"
  end
end
