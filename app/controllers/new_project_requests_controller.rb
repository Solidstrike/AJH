class NewProjectRequestsController < ApplicationController
  before_action :set_project_request, only: [:show, :update, :edit]
  def index
    @pending_requests = NewProjectRequest.includes(:project).where(status: 'pending')
  end

  def new
    @new_request = NewProjectRequest.new
    @project = Project.new
  end

  def create
    @new_request = NewProjectRequest.new(create_attributes)
    if @new_request.save

    else
      @project = @new_request.project
      render :new
  end

  def update
  end

  def edit
    if @new_request.update(update_attributes)
      redirect_to project_request_path(@new_request)
    else
      render :update
    end
  end

  private

    def create_atributes
      params.require(:new_project_request).permit( project_attributes: [:title, :company, :url, :specialty, :employment_type, :headline, :company_description, :job_description, :starts_at, :ends_at, :lat, :lng, :street, :house_number, :house_number_additional, :postcode, :country, :salary, :image_company_logo, :user_id, :pay_type, :city, :image])
    end

    def update_atributes
      params.require(:new_project_request).permit(:status)
    end
end
