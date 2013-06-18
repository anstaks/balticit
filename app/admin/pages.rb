# Encoding: utf-8
ActiveAdmin.register Page do
  menu :label => 'Страницы', :priority => 3
  config.batch_actions = false


  controller do
    def new
      @page = Page.new
      @page.build_seo   # без этой строки не появляется форма для seo параметров
    end
    def edit
      @page = Page.find(params[:id])
      if @page.seo_id.nil?
        @page.build_seo
      end
    end
  end

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
    f.inputs "SEO" do  # Настройка полей SEO
      f.semantic_fields_for :seo do |j|
        j.inputs :title, :keywords, :description
      end
    end
    f.actions
  end

end
