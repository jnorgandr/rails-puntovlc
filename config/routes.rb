Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, controller: 'home', only: [:index]
  root 'home#index'
end
