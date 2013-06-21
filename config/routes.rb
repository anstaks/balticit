Balticit::Application.routes.draw do

  match '/' => redirect('/ru') # need to make better

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post 'feedback' => 'mailer#feedback'

  localized do
    root :to => "pages#show", :slug => 'index'
    resources :pages
    resources :projects
    get ':slug' => 'pages#show', :as => :slug
  end
end

RouteTranslator.config do |config| # need to move to another file
  config.force_locale = true
  config.locale_param_key = :locale
end
