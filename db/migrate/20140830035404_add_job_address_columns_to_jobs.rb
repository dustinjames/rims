class AddJobAddressColumnsToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :job_address, :string
  	add_column :jobs, :job_city, :string
  	add_column :jobs, :job_postal_code, :string
  end
end
