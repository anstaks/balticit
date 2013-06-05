class Page < ActiveRecord::Base
  attr_accessible :alias, :content, :description, :keywords, :title
end
