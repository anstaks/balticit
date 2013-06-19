class PagesController < ApplicationController
  def show
    @projects = Project.all
    @page = Page.find_by_slug(params[:slug]) || Page.find(params[:slug])

    if File.exists?(Rails.root.join("app", "views", params[:controller], "#{params[:slug]}.html.erb"))
      render params[:slug]
    else
      puts 'no'
    end
  end
end
