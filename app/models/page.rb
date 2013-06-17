class Page < ActiveRecord::Base
  attr_accessible :alias, :content, :name, :hidden

  extend FriendlyId
  friendly_id :alias
end
