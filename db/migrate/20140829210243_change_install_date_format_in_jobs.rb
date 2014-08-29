class ChangeInstallDateFormatInJobs < ActiveRecord::Migration
  def up
  	change_column :jobs, :install_date, :date
  end

  def down
  	change_column :jobs, :install_date, :string
  end
end
