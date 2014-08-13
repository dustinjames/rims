class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email_address
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :customer_type

      t.timestamps
    end
  end
end
