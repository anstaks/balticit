class AddBackgroundAttributesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :preview_background, :string
    add_column :projects, :background_uid, :string
  end
end
