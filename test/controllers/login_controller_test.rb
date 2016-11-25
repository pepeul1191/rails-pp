require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get login_index_url
    assert_response :success
  end

  test "should get acceder" do
    get login_acceder_url
    assert_response :success
  end

  test "should get ver" do
    get login_ver_url
    assert_response :success
  end

  test "should get cerrar" do
    get login_cerrar_url
    assert_response :success
  end

end
