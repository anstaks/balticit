class AddHiddenToPages < ActiveRecord::Migration
  def change
    add_column :pages, :hidden, :boolean, default:0
    change_column :pages, :content, :text
  end
end
