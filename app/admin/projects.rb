# Encoding: utf-8
ActiveAdmin.register Project do
  config.batch_actions = false
  scope :all, :default => true

  index do
    column :id
    column 'Заголовок', :title
    column 'Описание', :content, sortable:false
    column :preview_background, sortable:false
    column :background, sortable:false
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :background, as: :dragonfly, input_html: { components: [:preview, :upload ] }
      f.input :title
      f.input :content
      f.input :preview_background
    end
    f.actions
  end
end

