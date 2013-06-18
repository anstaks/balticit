class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :content
      t.text :intro
      t.string :preview_image
      t.string :preview_background
      t.string :background

      t.timestamps
    end
  end
end
