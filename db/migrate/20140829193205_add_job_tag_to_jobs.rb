class AddJobTagToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_tag, :string
  end
end
