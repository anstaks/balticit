class PagesController < ApplicationController
  def show
    @projects = Project.all
    @page = Page.find_by_slug(params[:slug]) || Page.find(params[:slug])
  end
end
