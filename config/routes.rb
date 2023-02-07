Rails.application.routes.draw do
  resources :memberships, only: [:show]
  resources :clients, only: [:show, :update]
  resources :gyms, only: [:show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
