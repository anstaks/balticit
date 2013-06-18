class CreateSeos < ActiveRecord::Migration
  def change
    create_table :seos do |t|
      t.string :title
      t.string :keywords
      t.string :description

      t.timestamps
    end

    add_column :pages, :seo_id, :integer
    add_index :pages, :seo_id
    add_index :pages, :slug, unique: true
  end
end
