Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gyms, only: %i[index show destroy]
  resources :memberships, only: [:create]
  resources :clients, only: %i[index show]
end
