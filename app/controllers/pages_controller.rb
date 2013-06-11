class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def show
    @page = Page.find_by_alias(params[:alias]) || Page.find(params[:alias])
  end
end
