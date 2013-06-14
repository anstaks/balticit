class Page < ActiveRecord::Base
  attr_accessible :alias, :content, :description, :keywords, :title, :hidden

  scope :no_seo, where(keywords:'',description:'')

  extend FriendlyId
  friendly_id :alias
end
