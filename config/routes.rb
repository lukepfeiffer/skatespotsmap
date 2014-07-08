Skatespotsmap::Application.routes.draw do
  resources :users
  resources :spots

  root 'spots#index'

  post 'sessions', to: 'sessions#create'

  delete 'sign_out', to: 'sessions#destroy'
end
