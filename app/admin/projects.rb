# Encoding: utf-8
ActiveAdmin.register Project do
  menu :label => 'Портфолио', :priority => 2

  config.batch_actions = false
  scope :all, :default => true

  index do
    column :id
    column 'Заголовок', :name
    column 'Вводный текст', :intro, sortable:false
    column 'Фон превью', :preview_background, sortable:false do |bg|
      raw '<div style="width:100px;height:50px;background:'+bg.preview_background+'">&nbsp;</div>'
    end
    column 'Картинка превью', :background do |bg|
      image_tag bg.background.thumb_admin if bg.background?
    end
    column 'Большой фон', :preview_image do |bg|
      image_tag bg.preview_image.thumb_admin if bg.preview_image?
    end
    default_actions
  end

  show do |f|
    attributes_table do
      row :id
      row :name
      row :intro
      row :content
      row :preview_background do |bg|
        raw '<div style="width:100px;height:50px;background:'+bg.preview_background+'">&nbsp;</div>'
      end
      row :preview_image do |bg|
        image_tag bg.preview_image.thumb_admin if bg.preview_image?
      end
      row :background do |bg|
        image_tag bg.background.thumb_admin if bg.background?
      end
    end
    active_admin_comments
  end

  form partial: 'form'
end

