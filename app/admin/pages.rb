# Encoding: utf-8
ActiveAdmin.register Page do
  menu :label => 'Страницы', :priority => 3
  config.batch_actions = false
  scope :all, :default => true
  scope :no_seo

  index do
    column :id
    column 'Заголовок', :title
    column 'Псевдоним',:alias, sortable:false
    column :description, sortable:false
    column :keywords, sortable:false do |key|
      array = key.keywords.split(',')
      div style:'color:#090' do
        array.count.to_s + ' keywords'
      end
    end
    column "Скрытый", :hidden
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :alias, :label => "Псевдоним"
      f.input :description
      f.input :keywords
      f.input :hidden, label:"Скрыть пункт меню"
    end
    f.inputs "Content" do
      f.input :content, :label => false, as: :text
    end
    f.actions
  end

end
