require 'test_helper'

class MicropopstsControllerTest < ActionController::TestCase
  setup do
    @micropopst = micropopsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropopsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropopst" do
    assert_difference('Micropopst.count') do
      post :create, micropopst: { content: @micropopst.content, user_id: @micropopst.user_id }
    end

    assert_redirected_to micropopst_path(assigns(:micropopst))
  end

  test "should show micropopst" do
    get :show, id: @micropopst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropopst
    assert_response :success
  end

  test "should update micropopst" do
    patch :update, id: @micropopst, micropopst: { content: @micropopst.content, user_id: @micropopst.user_id }
    assert_redirected_to micropopst_path(assigns(:micropopst))
  end

  test "should destroy micropopst" do
    assert_difference('Micropopst.count', -1) do
      delete :destroy, id: @micropopst
    end

    assert_redirected_to micropopsts_path
  end
end
