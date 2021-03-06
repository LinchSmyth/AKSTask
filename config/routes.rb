Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  resources :rooms, only: [:new, :create, :show, :index]

  get 'about', to: 'about#show'

  root 'home#show'

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
