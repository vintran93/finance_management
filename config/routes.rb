Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  get 'home/search'
  get 'home/search_stocks'

  post '/home/search' => 'home/search'
  post '/home/search_stocks' => 'home/search_stocks'
  
  #get '/cryptos/new', to: 'cryptos#new' as: 'new_crypto'
  root 'home#index'
end
