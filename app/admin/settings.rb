# Encoding: utf-8
ActiveAdmin.register Setting do
  actions :index,:update,:edit

  menu :label => 'Настройки', :priority => 4

  config.filters = false
  config.batch_actions = false

  index do
    column 'На главной странице', :home_content do |content|
      'См. в редактировании'
    end
    column :title, sortable:false
    column :keywords, sortable:false
    column :description, sortable:false
    default_actions
  end

  form do |f|
    f.inputs "Стандартные метатеги, ставятся если на страницах не заполнены" do
      f.input :title
      f.input :keywords
      f.input :description
    end

    f.inputs "Контент для главной страницы" do
      f.input :home_content
    end

    f.actions
  end


end
