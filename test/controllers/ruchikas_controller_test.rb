require "test_helper"

class RuchikasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruchika = ruchikas(:one)
  end

  test "should get index" do
    get ruchikas_url
    assert_response :success
  end

  test "should get new" do
    get new_ruchika_url
    assert_response :success
  end

  test "should create ruchika" do
    assert_difference("Ruchika.count") do
      post ruchikas_url, params: { ruchika: { body: @ruchika.body, title: @ruchika.title } }
    end

    assert_redirected_to ruchika_url(Ruchika.last)
  end

  test "should show ruchika" do
    get ruchika_url(@ruchika)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruchika_url(@ruchika)
    assert_response :success
  end

  test "should update ruchika" do
    patch ruchika_url(@ruchika), params: { ruchika: { body: @ruchika.body, title: @ruchika.title } }
    assert_redirected_to ruchika_url(@ruchika)
  end

  test "should destroy ruchika" do
    assert_difference("Ruchika.count", -1) do
      delete ruchika_url(@ruchika)
    end

    assert_redirected_to ruchikas_url
  end
end
