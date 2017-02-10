require 'test_helper'

class UserJogosControllerTest < ActionController::TestCase
  setup do
    @user_jogo = user_jogos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_jogos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_jogo" do
    assert_difference('UserJogo.count') do
      post :create, user_jogo: { jogo_id: @user_jogo.jogo_id, user_id: @user_jogo.user_id }
    end

    assert_redirected_to user_jogo_path(assigns(:user_jogo))
  end

  test "should show user_jogo" do
    get :show, id: @user_jogo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_jogo
    assert_response :success
  end

  test "should update user_jogo" do
    patch :update, id: @user_jogo, user_jogo: { jogo_id: @user_jogo.jogo_id, user_id: @user_jogo.user_id }
    assert_redirected_to user_jogo_path(assigns(:user_jogo))
  end

  test "should destroy user_jogo" do
    assert_difference('UserJogo.count', -1) do
      delete :destroy, id: @user_jogo
    end

    assert_redirected_to user_jogos_path
  end
end
