class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def show
    @page = Page.find_by_slug(params[:slug]) || Page.find(params[:slug])
  end
end
