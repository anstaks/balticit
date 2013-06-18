# Encoding: utf-8
class AddIndexPage < ActiveRecord::Migration
  def self.up
    Page.create!(:name => "Главная", :slug => "index")
  end
  def self.down
    Page.delete_all(:slug => "index")
  end
end
