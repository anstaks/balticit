class Project < ActiveRecord::Base
  attr_accessible :content, :title, :background_uid, :background, :preview_background, :description
  image_accessor :background

  def background_url
    self.background.url
  end
end
