Balticit::Application.routes.draw do

  root :to => "pages#show", :slug => 'index', locale:'en'

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post 'feedback' => 'mailer#feedback'

  localized do
    root :to => "pages#show", :slug => 'index'
    get ':slug' => 'pages#show', :as => :slug
    resources :pages
    resources :projects
  end
end
