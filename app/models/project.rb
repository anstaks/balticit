class Project < ActiveRecord::Base
  attr_accessible :content, :title, :background_uid, :background, :retained_background, :preview_background, :description
  image_accessor :background
end
