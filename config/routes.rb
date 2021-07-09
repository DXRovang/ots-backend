Rails.application.routes.draw do
  resources :users
  resources :makers
  resources :categories
  resources :instruments
  resources :families
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
