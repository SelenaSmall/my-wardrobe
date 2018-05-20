Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: 'items#index'

  resources :tags
  resources :items
  resources :photos
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
