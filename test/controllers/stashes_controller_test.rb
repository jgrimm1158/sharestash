require 'test_helper'

class StashesControllerTest < ActionController::TestCase
  setup do
    @stash = stashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stash" do
    assert_difference('Stash.count') do
      post :create, stash: { description: @stash.description }
    end

    assert_redirected_to stash_path(assigns(:stash))
  end

  test "should show stash" do
    get :show, id: @stash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stash
    assert_response :success
  end

  test "should update stash" do
    patch :update, id: @stash, stash: { description: @stash.description }
    assert_redirected_to stash_path(assigns(:stash))
  end

  test "should destroy stash" do
    assert_difference('Stash.count', -1) do
      delete :destroy, id: @stash
    end

    assert_redirected_to stashes_path
  end
end
