require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_url
    assert_response :success
  end

  test "should get new" do
    get new_coin_url
    assert_response :success
  end

  test "should create coin" do
    assert_difference('Coin.count') do
      post coins_url, params: { coin: { batch: @coin.batch, country: @coin.country, denomination: @coin.denomination, issuer: @coin.issuer, location: @coin.location, material: @coin.material, name: @coin.name, num_record: @coin.num_record, part_number: @coin.part_number, quantity: @coin.quantity, serial_number: @coin.serial_number } }
    end

    assert_redirected_to coin_url(Coin.last)
  end

  test "should show coin" do
    get coin_url(@coin)
    assert_response :success
  end

  test "should get edit" do
    get edit_coin_url(@coin)
    assert_response :success
  end

  test "should update coin" do
    patch coin_url(@coin), params: { coin: { batch: @coin.batch, country: @coin.country, denomination: @coin.denomination, issuer: @coin.issuer, location: @coin.location, material: @coin.material, name: @coin.name, num_record: @coin.num_record, part_number: @coin.part_number, quantity: @coin.quantity, serial_number: @coin.serial_number } }
    assert_redirected_to coin_url(@coin)
  end

  test "should destroy coin" do
    assert_difference('Coin.count', -1) do
      delete coin_url(@coin)
    end

    assert_redirected_to coins_url
  end
end
