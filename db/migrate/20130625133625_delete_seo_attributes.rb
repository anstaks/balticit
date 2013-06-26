class DeleteSeoAttributes < ActiveRecord::Migration
  def up
    remove_column :seos, :title
    remove_column :seos, :keywords
    remove_column :seos, :description
  end

  def down
    add_column :seos, :title
    add_column :seos, :keywords
    add_column :seos, :description
  end
end
