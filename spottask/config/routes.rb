Rails.application.routes.draw do
  devise_for :users

  resources :page, only: [:index, :show]
  resources :account, only: [:index, :show, :create]

  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
