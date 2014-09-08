json.array!(@rooms) do |room|
  json.extract! room, :id, :room_type, :material, :material_details, :exterior_colour, :interior_colour, :upper_door_style, :lower_door_style, :drawer_front_style, :panel_back_style, :finished_ends, :track_style, :drawer_box_style, :counter_top_material, :counter_top_supplier, :counter_top_colour, :counter_top_edge, :backsplash, :sink_install, :closed_to_ceiling, :crown_molding, :under_cabinet_molding, :order_name, :order_description
  json.url room_url(room, format: :json)
end
