class Project < ActiveRecord::Base
  attr_accessible :content, :name, :intro, :preview_background, :background, :preview_image,:remove_preview_image, :remove_background

  require 'carrierwave/orm/activerecord'
  mount_uploader :background, BackgroundUploader
  mount_uploader :preview_image, PreviewImageUploader

  validates :name, presence: true
end
