require 'test_helper'

class PiltsControllerTest < ActionController::TestCase
  setup do
    @pilt = pilts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pilts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pilt" do
    assert_difference('Pilt.count') do
      post :create, pilt: { description: @pilt.description, name: @pilt.name, picture: @pilt.picture }
    end

    assert_redirected_to pilt_path(assigns(:pilt))
  end

  test "should show pilt" do
    get :show, id: @pilt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pilt
    assert_response :success
  end

  test "should update pilt" do
    put :update, id: @pilt, pilt: { description: @pilt.description, name: @pilt.name, picture: @pilt.picture }
    assert_redirected_to pilt_path(assigns(:pilt))
  end

  test "should destroy pilt" do
    assert_difference('Pilt.count', -1) do
      delete :destroy, id: @pilt
    end

    assert_redirected_to pilts_path
  end
end
