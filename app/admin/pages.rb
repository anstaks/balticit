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
    column "Скрытый", :hidden do |resource|
      resource.hidden? ? 'Да' : 'Нет'
    end
    default_actions
  end

  form partial: 'form'
end
