class DeleteProjectAttributes < ActiveRecord::Migration
  def up
    remove_column :projects, :content
    remove_column :projects, :name
    remove_column :projects, :intro
  end

  def down
    add_column :projects, :content, :text
    add_column :projects, :name, :string
    add_column :projects, :intro, :string
  end
end
