Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: 'categories#index'

  resources :tags
  resources :photos
  resources :looks
  resources :categories do
    resources :items
  end

  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
