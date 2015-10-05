require 'test_helper'

class ArlesControllerTest < ActionController::TestCase
  setup do
    @arl = arles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arl" do
    assert_difference('Arl.count') do
      post :create, arl: { name: @arl.name }
    end

    assert_redirected_to arl_path(assigns(:arl))
  end

  test "should show arl" do
    get :show, id: @arl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arl
    assert_response :success
  end

  test "should update arl" do
    patch :update, id: @arl, arl: { name: @arl.name }
    assert_redirected_to arl_path(assigns(:arl))
  end

  test "should destroy arl" do
    assert_difference('Arl.count', -1) do
      delete :destroy, id: @arl
    end

    assert_redirected_to arles_path
  end
end
