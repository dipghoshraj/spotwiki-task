Rails.application.routes.draw do
  resources :page, only: [:index, :show]
  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
