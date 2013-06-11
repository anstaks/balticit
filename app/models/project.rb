class Project < ActiveRecord::Base
  attr_accessible :content, :title, :background_uid, :background, :preview_image_uid, :preview_image, :preview_background, :description, :retained_preview_image, :retained_background
  image_accessor :background
  image_accessor :preview_image

  def background_url
    self.background.url
  end

  def preview_image_url
    self.preview_image.url
  end
end
