Rails.application.routes.draw do

  post '/api/v1/login', to: 'api/v1/sessions#create'
  get '/api/v1/get_current_user', to: 'api/v1/sessions#get_current_user'


  namespace :api do
    namespace :v1 do
      # get '/signup', to: "users#new"
      # post '/users', to: "users#create"
      
      post 'login', to: 'sessions#create'
      post '/logout', to: 'sessions#destroy'
    
      resources :users, except: [:new, :create]
    
      resources :families, only: [:show] do
        resources :instruments, only: [:new]
        resources :categories, only: [:index]
      end
    
      resources :families, only: [:index]
      # resources :categories, only: [:index, :show]
      resources :makers, only: [:index, :show]
      resources :instruments, except: [:new]
    end
  end


 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
