class Page < ActiveRecord::Base
  attr_accessible :slug, :content, :name, :hidden

  extend FriendlyId
  friendly_id :slug
end
