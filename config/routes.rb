Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#welcome', as: :home

  get '/about' => 'about#index', as: :about

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/portfolio/new' => 'portfolio#create'

  resources :portfolio
  resources :pages
  resources :contacts
  resources :users
end
