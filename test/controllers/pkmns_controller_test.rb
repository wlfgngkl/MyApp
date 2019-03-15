require 'test_helper'

class PkmnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pkmn = pkmns(:one)
  end

  test "should get index" do
    get pkmns_url
    assert_response :success
  end

  test "should get new" do
    get new_pkmn_url
    assert_response :success
  end

  test "should create pkmn" do
    assert_difference('Pkmn.count') do
      post pkmns_url, params: { pkmn: { gen: @pkmn.gen, name: @pkmn.name, typ1: @pkmn.typ1, typ2: @pkmn.typ2 } }
    end

    assert_redirected_to pkmn_url(Pkmn.last)
  end

  test "should show pkmn" do
    get pkmn_url(@pkmn)
    assert_response :success
  end

  test "should get edit" do
    get edit_pkmn_url(@pkmn)
    assert_response :success
  end

  test "should update pkmn" do
    patch pkmn_url(@pkmn), params: { pkmn: { gen: @pkmn.gen, name: @pkmn.name, typ1: @pkmn.typ1, typ2: @pkmn.typ2 } }
    assert_redirected_to pkmn_url(@pkmn)
  end

  test "should destroy pkmn" do
    assert_difference('Pkmn.count', -1) do
      delete pkmn_url(@pkmn)
    end

    assert_redirected_to pkmns_url
  end
end
