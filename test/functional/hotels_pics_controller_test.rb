require 'test_helper'

class HotelsPicsControllerTest < ActionController::TestCase
  setup do
    @hotels_pic = hotels_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotels_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotels_pic" do
    assert_difference('HotelsPic.count') do
      post :create, hotels_pic: @hotels_pic.attributes
    end

    assert_redirected_to hotels_pic_path(assigns(:hotels_pic))
  end

  test "should show hotels_pic" do
    get :show, id: @hotels_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotels_pic
    assert_response :success
  end

  test "should update hotels_pic" do
    put :update, id: @hotels_pic, hotels_pic: @hotels_pic.attributes
    assert_redirected_to hotels_pic_path(assigns(:hotels_pic))
  end

  test "should destroy hotels_pic" do
    assert_difference('HotelsPic.count', -1) do
      delete :destroy, id: @hotels_pic
    end

    assert_redirected_to hotels_pics_path
  end
end
