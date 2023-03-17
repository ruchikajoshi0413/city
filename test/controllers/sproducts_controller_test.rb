require "test_helper"

class SproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sproduct = sproducts(:one)
  end

  test "should get index" do
    get sproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_sproduct_url
    assert_response :success
  end

  test "should create sproduct" do
    assert_difference("Sproduct.count") do
      post sproducts_url, params: { sproduct: { alignment: @sproduct.alignment, description: @sproduct.description, image: @sproduct.image, title: @sproduct.title } }
    end

    assert_redirected_to sproduct_url(Sproduct.last)
  end

  test "should show sproduct" do
    get sproduct_url(@sproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_sproduct_url(@sproduct)
    assert_response :success
  end

  test "should update sproduct" do
    patch sproduct_url(@sproduct), params: { sproduct: { alignment: @sproduct.alignment, description: @sproduct.description, image: @sproduct.image, title: @sproduct.title } }
    assert_redirected_to sproduct_url(@sproduct)
  end

  test "should destroy sproduct" do
    assert_difference("Sproduct.count", -1) do
      delete sproduct_url(@sproduct)
    end

    assert_redirected_to sproducts_url
  end
end
