require 'test_helper'

class ServisesControllerTest < ActionController::TestCase
  setup do
    @servise = servises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servise" do
    assert_difference('Servise.count') do
      post :create, servise: { active_serv: @servise.active_serv, price_serv: @servise.price_serv, time_of_payment: @servise.time_of_payment, type_serv: @servise.type_serv, user_id: @servise.user_id }
    end

    assert_redirected_to servise_path(assigns(:servise))
  end

  test "should show servise" do
    get :show, id: @servise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servise
    assert_response :success
  end

  test "should update servise" do
    patch :update, id: @servise, servise: { active_serv: @servise.active_serv, price_serv: @servise.price_serv, time_of_payment: @servise.time_of_payment, type_serv: @servise.type_serv, user_id: @servise.user_id }
    assert_redirected_to servise_path(assigns(:servise))
  end

  test "should destroy servise" do
    assert_difference('Servise.count', -1) do
      delete :destroy, id: @servise
    end

    assert_redirected_to servises_path
  end
end
