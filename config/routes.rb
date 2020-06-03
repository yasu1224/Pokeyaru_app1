Rails.application.routes.draw do
  root to: "pokecas#index"
  resources :pokecas
  resources :rares
  resources :genres
  resources :boxes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
