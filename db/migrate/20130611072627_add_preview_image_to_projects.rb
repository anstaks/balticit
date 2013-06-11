class AddPreviewImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :preview_image_uid, :string
  end
end
