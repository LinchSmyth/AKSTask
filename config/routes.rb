Rails.application.routes.draw do
  get 'room/show'

  get 'about', to: 'about#show'

  root 'home#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
