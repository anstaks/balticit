class Seo < ActiveRecord::Base
  attr_accessible :translations_attributes, :translations
  translates :title, :keywords, :description
  accepts_nested_attributes_for :translations

  has_one :page
end
