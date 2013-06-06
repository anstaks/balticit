# Encoding: utf-8
ActiveAdmin.register Project do
  config.batch_actions = false
  scope :all, :default => true

  index do
    column :id
    column 'Заголовок', :title
    column 'Описание', :content, sortable:false
    column 'Фон превью', :preview_background, sortable:false do |bg|
        raw '<div style="width:100px;height:50px;background:'+bg.preview_background+'">&nbsp;</div>'
    end
    column 'Большой фон', :background_uid do |bg|
      image_tag bg.background.thumb('100x100').url if bg.background_uid
    end
    default_actions
  end

  show do
    h3 :title
    div do
      simple_format :id
    end
  end

  show do |f|
    attributes_table do
      row :id
      row :title
      row :content
      row :preview_background do |bg|
        raw '<div style="width:100px;height:50px;background:'+bg.preview_background+'">&nbsp;</div>'
      end
      row :background_uid do |bg|
        image_tag bg.background.thumb('100x100').url if bg.background_uid
      end
    end
    active_admin_comments
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

