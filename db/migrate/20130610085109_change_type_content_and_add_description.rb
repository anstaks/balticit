class ChangeTypeContentAndAddDescription < ActiveRecord::Migration
  def change
    change_column :projects, :content, :text
    add_column :projects, :description, :text
  end
end
