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
    column 'Картинка превью', :background_uid do |bg|
      image_tag bg.preview_image.thumb('100x100').url if bg.preview_image_uid
    end
    column 'Большой фон', :background_uid do |bg|
      image_tag bg.background.thumb('100x100').url if bg.background_uid
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
      row :background_uid do |bg|
        image_tag bg.background.thumb('100x100').url if bg.background_uid
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Основное" do
      f.input :preview_image, label:'Маленькое фото для превью', as: :dragonfly, input_html: { components: [:preview, :upload ] }
      f.input :background, label:'Фоновое изображение для попапа', as: :dragonfly, input_html: { components: [:preview, :upload ] }
      f.input :name, label:'Заголовок проекта'
      f.input :intro, input_html: {rows:3}, label:'Вводный текст'
      f.input :preview_background, label:'Фоновый цвет при ховере'
    end
    f.inputs "Content" do
      f.input :content, label:'Контент' , as: :text
    end
    f.actions
  end
end

