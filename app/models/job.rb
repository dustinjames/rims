class Job < ActiveRecord::Base
	belongs_to :customer
	has_many :rooms

	validates :install, presence: true
	validates :delivery, presence: true
	validates :job_tag, presence: true
	validates :job_address, presence: true
	validates_formatting_of :job_address, :using => :alphanum
	validates :job_city, presence: true
	validates :job_postal_code, presence: true
	validates_formatting_of :job_postal_code, :using => :alphanum
	validates :install_date, presence: true
	validates_date :install_date
	validates :box_count, presence: true
	validates :box_count, numericality: true
	validates :cabinet_cost, presence: true
	validates :cabinet_cost, numericality: true
	validates :counter_top_cost, presence: true
	validates :counter_top_cost, numericality: true
	validates :install_cost, presence: true
	validates :install_cost, numericality: true

	def revenue
		cabinet_cost.to_i + counter_top_cost.to_i + install_cost.to_i
	end
end
