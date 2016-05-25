require 'test_helper'

class ReparationsControllerTest < ActionController::TestCase
  setup do
    @reparation = reparations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reparations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reparation" do
    assert_difference('Reparation.count') do
      post :create, reparation: { name: @reparation.name, prix: @reparation.prix }
    end

    assert_redirected_to reparation_path(assigns(:reparation))
  end

  test "should show reparation" do
    get :show, id: @reparation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reparation
    assert_response :success
  end

  test "should update reparation" do
    patch :update, id: @reparation, reparation: { name: @reparation.name, prix: @reparation.prix }
    assert_redirected_to reparation_path(assigns(:reparation))
  end

  test "should destroy reparation" do
    assert_difference('Reparation.count', -1) do
      delete :destroy, id: @reparation
    end

    assert_redirected_to reparations_path
  end
end
