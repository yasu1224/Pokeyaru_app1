Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  root to: "pokecas#index"
  resources :pokecas, only: [:index, :show]
  resources :rares, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :boxes, only: [:index, :show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
