require 'test_helper'

class ResRoomsControllerTest < ActionController::TestCase
  setup do
    @res_room = res_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:res_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create res_room" do
    assert_difference('ResRoom.count') do
      post :create, res_room: @res_room.attributes
    end

    assert_redirected_to res_room_path(assigns(:res_room))
  end

  test "should show res_room" do
    get :show, id: @res_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @res_room
    assert_response :success
  end

  test "should update res_room" do
    put :update, id: @res_room, res_room: @res_room.attributes
    assert_redirected_to res_room_path(assigns(:res_room))
  end

  test "should destroy res_room" do
    assert_difference('ResRoom.count', -1) do
      delete :destroy, id: @res_room
    end

    assert_redirected_to res_rooms_path
  end
end
