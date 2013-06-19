Balticit::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  #root :to => 'pages#home'
  root :to => "pages#show", :slug => 'index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :pages
  resources :projects
  get ':slug' => 'pages#show', :as => :slug
end
