# Encoding: utf-8
ActiveAdmin.register Page do
  menu :label => 'Страницы', :priority => 3
  config.batch_actions = false

  index do
    column :id
    column 'Заголовок', :name
    column 'Псевдоним',:slug, sortable:false
    column "Скрытый", :hidden
    default_actions
  end

  form do |f|
    f.inputs "Основное" do
      f.input :name, label:'Заголовок для меню'
      f.input :slug, label:'Псевдоним для seo'
      f.input :hidden, label:"Скрыть пункт меню"
    end
    f.inputs "Контент" do
      f.input :content, label:"Контент", as: :text
    end
    f.actions
  end

end
