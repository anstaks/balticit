class Seo < ActiveRecord::Base
  attr_accessible :description, :keywords, :title

  has_one :page
end
