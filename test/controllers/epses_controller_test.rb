require 'test_helper'

class EpsesControllerTest < ActionController::TestCase
  setup do
    @eps = epses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:epses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eps" do
    assert_difference('Eps.count') do
      post :create, eps: { name: @eps.name }
    end

    assert_redirected_to eps_path(assigns(:eps))
  end

  test "should show eps" do
    get :show, id: @eps
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eps
    assert_response :success
  end

  test "should update eps" do
    patch :update, id: @eps, eps: { name: @eps.name }
    assert_redirected_to eps_path(assigns(:eps))
  end

  test "should destroy eps" do
    assert_difference('Eps.count', -1) do
      delete :destroy, id: @eps
    end

    assert_redirected_to epses_path
  end
end
