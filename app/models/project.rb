class Project < ActiveRecord::Base
  attr_accessible :content, :title, :project_background, :preview_color
end
