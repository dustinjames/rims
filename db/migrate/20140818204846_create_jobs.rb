class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :install
      t.string :delivery
      t.string :install_date
      t.integer :box_count
      t.string :cabinet_cost
      t.string :counter_top_cost
      t.string :install_cost
      t.string :payment_one
      t.string :payment_two
      t.string :payment_three

      t.timestamps
    end
  end
end
