Rails.application.routes.draw do
  devise_for :users
  resources :photos
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  root 'videos#index'
end
