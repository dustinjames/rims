json.array!(@jobs) do |job|
  json.extract! job, :id, :install, :delivery, :install_date, :box_count, :cabinet_cost, :counter_top_cost, :install_cost, :payment_one, :payment_two, :payment_three
  json.url job_url(job, format: :json)
end
