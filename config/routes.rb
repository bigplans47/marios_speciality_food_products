Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  root :to => 'landing#index'
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
