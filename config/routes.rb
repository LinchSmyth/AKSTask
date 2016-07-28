Rails.application.routes.draw do
  resources :users
  get 'rooms/show'

  get 'about', to: 'about#show'

  root 'home#show'

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
