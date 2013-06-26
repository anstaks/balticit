class CreateSeoTranslators < ActiveRecord::Migration
  def up
    Seo.create_translation_table!(
      {title: :string, keywords: :string, description: :string},
      {:migrate_data => true}
    )
  end

  def down
    Seo.drop_translation_table! :migrate_data => true
  end
end
