class ChangeBoxCountFormatInJobs < ActiveRecord::Migration
  def up
  	change_column :jobs, :box_count, :string
  end

  def down
  	change_column :jobs, :box_count, :integer
  end
end
