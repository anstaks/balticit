class DeleteSeoAttributes < ActiveRecord::Migration
  def up
    remove_columns :seos, :title, :keywords, :description
  end

  def down
    add_column :seos, :title, :string
    add_column :seos, :keywords, :string
    add_column :seos, :description, :string
  end
end
