Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'gymnasia#index'
  resources :programs
  resources :gymnasia
end
