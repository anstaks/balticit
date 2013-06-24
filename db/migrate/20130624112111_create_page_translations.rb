class CreatePageTranslations < ActiveRecord::Migration
  def up
    remove_column :pages, :content
    Page.create_translation_table!(
      {:content => :text},
      {:migrate_data => true}
    )
  end

  def down
    add_column :pages, :content, :text
    Page.drop_translation_table!
  end
end
