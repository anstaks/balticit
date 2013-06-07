class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    render json: @project, status: :ok
    #render json: @projects.as_json(include: :title), status: :ok
  end
end
