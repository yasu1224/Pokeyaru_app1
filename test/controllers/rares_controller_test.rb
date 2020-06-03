require 'test_helper'

class RaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rare = rares(:one)
  end

  test "should get index" do
    get rares_url
    assert_response :success
  end

  test "should get new" do
    get new_rare_url
    assert_response :success
  end

  test "should create rare" do
    assert_difference('Rare.count') do
      post rares_url, params: { rare: { rarity: @rare.rarity } }
    end

    assert_redirected_to rare_url(Rare.last)
  end

  test "should show rare" do
    get rare_url(@rare)
    assert_response :success
  end

  test "should get edit" do
    get edit_rare_url(@rare)
    assert_response :success
  end

  test "should update rare" do
    patch rare_url(@rare), params: { rare: { rarity: @rare.rarity } }
    assert_redirected_to rare_url(@rare)
  end

  test "should destroy rare" do
    assert_difference('Rare.count', -1) do
      delete rare_url(@rare)
    end

    assert_redirected_to rares_url
  end
end
