require 'test_helper'

class FlitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flit = flits(:one)
  end

  test "should get index" do
    get flits_url
    assert_response :success
  end

  test "should get new" do
    get new_flit_url
    assert_response :success
  end

  test "should create flit" do
    assert_difference('Flit.count') do
      post flits_url, params: { flit: { name: @flit.name } }
    end

    assert_redirected_to flit_url(Flit.last)
  end

  test "should show flit" do
    get flit_url(@flit)
    assert_response :success
  end

  test "should get edit" do
    get edit_flit_url(@flit)
    assert_response :success
  end

  test "should update flit" do
    patch flit_url(@flit), params: { flit: { name: @flit.name } }
    assert_redirected_to flit_url(@flit)
  end

  test "should destroy flit" do
    assert_difference('Flit.count', -1) do
      delete flit_url(@flit)
    end

    assert_redirected_to flits_url
  end
end
