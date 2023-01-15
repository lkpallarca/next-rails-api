class JobsController < ApplicationController
  def index
    jobs = Job.order(created_at: :desc)
    render json: {
      status: :ok,
      message: "Loaded jobs",
      data: jobs
    }
  end

  def show
    job = Job.find(params[:id])
    render json: {
      status: :ok,
      message: "Loaded job",
      data: job
    }
  end

  def create
    job = Job.create(job_params)

    if job.save
      render json: {
        status: :ok,
        message: "Job created",
        data: job
      } 
    else
      render json: {
        status: :unprocessable_entity,
        message: "Job not saved",
        data: job.errors
      }
    end
  end

  def update
    job = Job.find(params[:id])

    if job.update(job_params)
      render json: {
        status: :ok,
        message: "Job updated",
        data: job
      }
    else
      render json: {
        status: :unprocessable_entity,
        message: "Job not updated",
        data: job.errors
      }
    end
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
    render json: {
      status: :ok,
      message: "Job deleted",
      data: job
    }
  end

  private

  def job_params
    params.permit(
      :title, 
      :company, 
      :summary, 
      :status, 
      :salary_offer, 
      :location, 
      :target_deadline
    )
  end
end