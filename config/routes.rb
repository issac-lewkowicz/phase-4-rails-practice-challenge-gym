Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, exclude: [:create]
  resources :clients, only: [:index, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
