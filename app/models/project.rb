class Project < ActiveRecord::Base
  attr_accessible :preview_background, :background, :preview_image,:remove_preview_image, :remove_background

  require 'carrierwave/orm/activerecord'
  mount_uploader :background, BackgroundUploader
  mount_uploader :preview_image, PreviewImageUploader

  attr_accessible :translations_attributes, :translations
  translates :content, :name, :intro
  accepts_nested_attributes_for :translations

  class Translation
    validates :name, presence: true
  end
end
