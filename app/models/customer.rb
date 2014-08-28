class Customer < ActiveRecord::Base
	has_many :jobs

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone_number, presence: true
	validates_formatting_of :phone_number, :using => :us_phone
	validates :email_address, presence: true
	validates_formatting_of :email_address, :using => :email
	validates :address, presence: true
	validates_formatting_of :address, :using => :alphanum
	validates :city, presence: true
	validates :postal_code, presence: true
	validates_formatting_of :postal_code, :using => :alphanum
	validates :customer_type, presence: true
end
