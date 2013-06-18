class Page < ActiveRecord::Base
  attr_accessible :slug, :content, :name, :hidden, :seo_id, :seo_attributes
  belongs_to :seo

  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank

  extend FriendlyId
  friendly_id :slug
end
