Rails.application.routes.draw do
  resources :categories
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'movies#index'
end
