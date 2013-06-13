class Setting < ActiveRecord::Base
  attr_accessible :description, :keywords, :title, :home_content
end
