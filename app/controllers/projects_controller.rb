class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    render json: @project.as_json(methods: :background_url), status: :ok
  end
end
