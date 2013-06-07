class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    render json: @project, status: :ok
  end
end
