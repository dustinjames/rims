require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post :create, room: { backsplash: @room.backsplash, closed_to_ceiling: @room.closed_to_ceiling, counter_top_colour: @room.counter_top_colour, counter_top_edge: @room.counter_top_edge, counter_top_material: @room.counter_top_material, counter_top_supplier: @room.counter_top_supplier, crown_molding: @room.crown_molding, drawer_box_style: @room.drawer_box_style, drawer_front_style: @room.drawer_front_style, exterior_colour: @room.exterior_colour, finished_ends: @room.finished_ends, interior_colour: @room.interior_colour, lower_door_style: @room.lower_door_style, material: @room.material, material_details: @room.material_details, order_description: @room.order_description, order_name: @room.order_name, panel_back_style: @room.panel_back_style, room_type: @room.room_type, sink_install: @room.sink_install, track_style: @room.track_style, under_cabinet_molding: @room.under_cabinet_molding, upper_door_style: @room.upper_door_style }
    end

    assert_redirected_to room_path(assigns(:room))
  end

  test "should show room" do
    get :show, id: @room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room
    assert_response :success
  end

  test "should update room" do
    patch :update, id: @room, room: { backsplash: @room.backsplash, closed_to_ceiling: @room.closed_to_ceiling, counter_top_colour: @room.counter_top_colour, counter_top_edge: @room.counter_top_edge, counter_top_material: @room.counter_top_material, counter_top_supplier: @room.counter_top_supplier, crown_molding: @room.crown_molding, drawer_box_style: @room.drawer_box_style, drawer_front_style: @room.drawer_front_style, exterior_colour: @room.exterior_colour, finished_ends: @room.finished_ends, interior_colour: @room.interior_colour, lower_door_style: @room.lower_door_style, material: @room.material, material_details: @room.material_details, order_description: @room.order_description, order_name: @room.order_name, panel_back_style: @room.panel_back_style, room_type: @room.room_type, sink_install: @room.sink_install, track_style: @room.track_style, under_cabinet_molding: @room.under_cabinet_molding, upper_door_style: @room.upper_door_style }
    assert_redirected_to room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room
    end

    assert_redirected_to rooms_path
  end
end
