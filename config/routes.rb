Rails.application.routes.draw do
  resources :profiles
  resources :rooms
  devise_for :users
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  root 'rooms#index'
end
