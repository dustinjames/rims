require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { box_count: @job.box_count, cabinet_cost: @job.cabinet_cost, counter_top_cost: @job.counter_top_cost, delivery: @job.delivery, install: @job.install, install_cost: @job.install_cost, install_date: @job.install_date, payment_one: @job.payment_one, payment_three: @job.payment_three, payment_two: @job.payment_two }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { box_count: @job.box_count, cabinet_cost: @job.cabinet_cost, counter_top_cost: @job.counter_top_cost, delivery: @job.delivery, install: @job.install, install_cost: @job.install_cost, install_date: @job.install_date, payment_one: @job.payment_one, payment_three: @job.payment_three, payment_two: @job.payment_two }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
