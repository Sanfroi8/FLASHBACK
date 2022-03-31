require "test_helper"

class SouvenirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @souvenir = souvenirs(:one)
  end

  test "should get index" do
    get souvenirs_url
    assert_response :success
  end

  test "should get new" do
    get new_souvenir_url
    assert_response :success
  end

  test "should create souvenir" do
    assert_difference("Souvenir.count") do
      post souvenirs_url, params: { souvenir: { description: @souvenir.description, feeling: @souvenir.feeling, timemarker: @souvenir.timemarker, title: @souvenir.title } }
    end

    assert_redirected_to souvenir_url(Souvenir.last)
  end

  test "should show souvenir" do
    get souvenir_url(@souvenir)
    assert_response :success
  end

  test "should get edit" do
    get edit_souvenir_url(@souvenir)
    assert_response :success
  end

  test "should update souvenir" do
    patch souvenir_url(@souvenir), params: { souvenir: { description: @souvenir.description, feeling: @souvenir.feeling, timemarker: @souvenir.timemarker, title: @souvenir.title } }
    assert_redirected_to souvenir_url(@souvenir)
  end

  test "should destroy souvenir" do
    assert_difference("Souvenir.count", -1) do
      delete souvenir_url(@souvenir)
    end

    assert_redirected_to souvenirs_url
  end
end
