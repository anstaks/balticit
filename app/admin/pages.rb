# Encoding: utf-8
ActiveAdmin.register Page do
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
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :alias, :label => "Псевдоним"
      f.input :description
    end
    f.inputs "Content" do
      f.input :content, :as => :html_editor, :input_html => { :class => 'autogrow', :rows => 10, :cols => 20, :maxlength => 10  }
    end
    f.actions
  end

end
