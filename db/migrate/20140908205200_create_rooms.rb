class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.string :material
      t.string :material_details
      t.string :exterior_colour
      t.string :interior_colour
      t.string :upper_door_style
      t.string :lower_door_style
      t.string :drawer_front_style
      t.string :panel_back_style
      t.string :finished_ends
      t.string :track_style
      t.string :drawer_box_style
      t.string :counter_top_material
      t.string :counter_top_supplier
      t.string :counter_top_colour
      t.string :counter_top_edge
      t.string :backsplash
      t.string :sink_install
      t.string :closed_to_ceiling
      t.string :crown_molding
      t.string :under_cabinet_molding
      t.string :order_name
      t.text :order_description

      t.timestamps
    end
  end
end
