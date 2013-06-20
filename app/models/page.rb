class Page < ActiveRecord::Base
  attr_accessible :slug, :content, :name, :hidden, :seo_id, :seo_attributes, :layout
  belongs_to :seo

  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  extend FriendlyId
  friendly_id :slug
end
