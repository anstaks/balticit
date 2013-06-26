class DeleteSeoAttributes < ActiveRecord::Migration
  def up
    remove_column :seos, :title
    remove_column :seos, :keywords
    remove_column :seos, :description
  end

  def down
    add_column :seos, :title, :string
    add_column :seos, :keywords, :string
    add_column :seos, :description, :string
  end
end
