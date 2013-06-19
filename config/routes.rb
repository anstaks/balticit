Balticit::Application.routes.draw do

  root :to => "pages#show", :slug => 'index'

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :pages
  resources :projects
  get ':slug' => 'pages#show', :as => :slug
  post 'feedback' => 'mailer#feedback'

end
