class AddLayoutToPage < ActiveRecord::Migration
  def change
    add_column :pages, :layout, :string, default: 'application'
    add_index :pages, :layout
  end
end
