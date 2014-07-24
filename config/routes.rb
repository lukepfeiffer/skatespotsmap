Skatespotsmap::Application.routes.draw do
  resources :users
  resources :spots

  root 'pages#home'

  get '/city', to: 'spots#city'
  get '/about', to: 'pages#about'

  post 'sessions', to: 'sessions#create'

  delete 'sign_out', to: 'sessions#destroy'
end
