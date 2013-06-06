class AddBackgroundAttributesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :preview_color, :string
    add_column :projects, :project_background, :string
  end
end
