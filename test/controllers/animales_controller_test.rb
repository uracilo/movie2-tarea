require 'test_helper'

class AnimalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animale = animales(:one)
  end

  test "should get index" do
    get animales_url
    assert_response :success
  end

  test "should get new" do
    get new_animale_url
    assert_response :success
  end

  test "should create animale" do
    assert_difference('Animale.count') do
      post animales_url, params: { animale: { name: @animale.name, scientificname: @animale.scientificname } }
    end

    assert_redirected_to animale_url(Animale.last)
  end

  test "should show animale" do
    get animale_url(@animale)
    assert_response :success
  end

  test "should get edit" do
    get edit_animale_url(@animale)
    assert_response :success
  end

  test "should update animale" do
    patch animale_url(@animale), params: { animale: { name: @animale.name, scientificname: @animale.scientificname } }
    assert_redirected_to animale_url(@animale)
  end

  test "should destroy animale" do
    assert_difference('Animale.count', -1) do
      delete animale_url(@animale)
    end

    assert_redirected_to animales_url
  end
end
