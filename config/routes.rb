Skatespotsmap::Application.routes.draw do
  resources :users
  resources :spots
  resources :comments

  root 'pages#home'

  get '/about', to: 'pages#about'

  post 'sessions', to: 'sessions#create'

  delete 'sign_out', to: 'sessions#destroy'
end
