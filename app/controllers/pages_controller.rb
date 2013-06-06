class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def show
    @page = Page.find(params[:id])
  end
end
