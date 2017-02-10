require 'test_helper'

class UserLivrosControllerTest < ActionController::TestCase
  setup do
    @user_livro = user_livros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_livros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_livro" do
    assert_difference('UserLivro.count') do
      post :create, user_livro: { livro_id: @user_livro.livro_id, user_id: @user_livro.user_id }
    end

    assert_redirected_to user_livro_path(assigns(:user_livro))
  end

  test "should show user_livro" do
    get :show, id: @user_livro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_livro
    assert_response :success
  end

  test "should update user_livro" do
    patch :update, id: @user_livro, user_livro: { livro_id: @user_livro.livro_id, user_id: @user_livro.user_id }
    assert_redirected_to user_livro_path(assigns(:user_livro))
  end

  test "should destroy user_livro" do
    assert_difference('UserLivro.count', -1) do
      delete :destroy, id: @user_livro
    end

    assert_redirected_to user_livros_path
  end
end
