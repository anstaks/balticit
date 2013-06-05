class PagesController < ApplicationController
  def home

  end

  def show
    @page = Page.find(params[:id])
  end
end
