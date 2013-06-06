# Encoding: utf-8
ActiveAdmin.register Project do
  config.batch_actions = false
  scope :all, :default => true

  index do
    column :id
    column 'Заголовок', :title
    column 'Описание', :content, sortable:false
    default_actions
  end
end

