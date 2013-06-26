class AddProjectTranslators < ActiveRecord::Migration
  def up
    Project.create_translation_table!(
      {content: :text, name: :string, intro: :string},
      {:migrate_data => true}
    )
  end

  def down
    Project.drop_translation_table! :migrate_data => true
  end
end
