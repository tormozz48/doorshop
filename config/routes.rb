Doorshop::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  resources :main, :only => [:index]
  resources :catalog, :only => [:index]

  root :to => 'main#index'
end
