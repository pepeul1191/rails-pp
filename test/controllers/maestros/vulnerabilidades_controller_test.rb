require 'test_helper'

class Maestros::VulnerabilidadesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get maestros_vulnerabilidades_index_url
    assert_response :success
  end

  test "should get nuevo" do
    get maestros_vulnerabilidades_nuevo_url
    assert_response :success
  end

  test "should get visto" do
    get maestros_vulnerabilidades_visto_url
    assert_response :success
  end

  test "should get editado" do
    get maestros_vulnerabilidades_editado_url
    assert_response :success
  end

end
