Rails.application.routes.draw do
  root 'session#new'


  get 'session/new'

  get 'session/create'
  get 'session/destroy'

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"

  resources :challenges
  resources :test_pairs
  resources :solutions
  resources :users
  resources :comments 
end