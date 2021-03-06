class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.find(params[:id])
    @customer = Customer.find(params[:customer_id])
  end

  # GET /jobs/new
  def new
    @customer = Customer.find(params[:customer_id])
    @job = @customer.jobs.build
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @customer = Customer.find(params[:customer_id])
    @job = @customer.jobs.build(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to customer_job_path(@customer, @job), notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job }
      else
        format.html { render action: 'new' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:install, :delivery, :job_tag, :job_address, :job_city, :job_postal_code, :install_date, :box_count, :cabinet_cost, :counter_top_cost, :install_cost, :customer_id)
    end
end
