require 'test_helper'

class ExpeditionsControllerTest < ActionController::TestCase
  setup do
    @expedition = expeditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expeditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expedition" do
    assert_difference('Expedition.count') do
      post :create, expedition: { coment: @expedition.coment, destination: @expedition.destination, end_datedatetime: @expedition.end_datedatetime, start_date: @expedition.start_date, starting_point: @expedition.starting_point, title: @expedition.title }
    end

    assert_redirected_to expedition_path(assigns(:expedition))
  end

  test "should show expedition" do
    get :show, id: @expedition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expedition
    assert_response :success
  end

  test "should update expedition" do
    patch :update, id: @expedition, expedition: { coment: @expedition.coment, destination: @expedition.destination, end_datedatetime: @expedition.end_datedatetime, start_date: @expedition.start_date, starting_point: @expedition.starting_point, title: @expedition.title }
    assert_redirected_to expedition_path(assigns(:expedition))
  end

  test "should destroy expedition" do
    assert_difference('Expedition.count', -1) do
      delete :destroy, id: @expedition
    end

    assert_redirected_to expeditions_path
  end
end
