Rails.application.routes.draw do
  root to: 'gymnasia#index'
  resources :programs
  resources :gymnasia
end
