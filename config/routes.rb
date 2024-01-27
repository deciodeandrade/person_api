Rails.application.routes.draw do
  get '/home', to: 'home#index'

  get '/people/:id', to: 'people#show'
  get '/people', to: 'people#index'
  post '/people', to: 'people#create'

  root 'home#index'
  
end
