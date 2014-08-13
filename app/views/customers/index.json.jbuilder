json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :phone_number, :email_address, :address, :city, :postal_code, :customer_type
  json.url customer_url(customer, format: :json)
end
