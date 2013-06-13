class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :title
      t.string :keywords
      t.string :description
      t.text :home_content

      t.timestamps
    end
  end
end
