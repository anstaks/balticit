class Page < ActiveRecord::Base
  attr_accessible :slug, :hidden, :seo_id, :seo_attributes, :layout, :translations_attributes, :translations
  belongs_to :seo

  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank
  validates :slug, presence: true, uniqueness: true

  translates :content, :name
  accepts_nested_attributes_for :translations


  class Translation
    validates :name, presence: true
  end

  extend FriendlyId
  friendly_id :slug
end
