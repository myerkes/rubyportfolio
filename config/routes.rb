Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#welcome'

  get '/portfolio' => 'portfolio#index'
  get '/portfolio/:id' => 'portfolio#show'

  get '/about' => 'about#index'

  get '/contact' => 'contact#index'

  resources :pages
end
