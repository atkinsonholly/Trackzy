Rails.application.routes.draw do
  root 'application#home'
  get '/analytics', to: 'application#analytics'


  # sessions management
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'

  # users management
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  resources :users, only: [:index, :new, :create, :show]

  # workouts management
  resources :workouts

  # gyms management
  resources :gyms, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
