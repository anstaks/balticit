class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :alias
      t.string :description
      t.string :keywords
      t.string :content

      t.timestamps
    end
  end
end
