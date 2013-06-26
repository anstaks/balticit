class Seo < ActiveRecord::Base
  attr_accessible :translations_attributes, :translations, :description, :keywords, :title

  translates :title, :keywords, :description
  accepts_nested_attributes_for :translations

  has_one :page
end
