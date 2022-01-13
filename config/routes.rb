Rails.application.routes.draw do
  
  devise_for :users
  root 'articles#index' #deixa rota como padrĂ£o 
    

  resources :articles 
  resources :categories, except: [:show]
  #faz todo crud com os helpers abaixo sem a necessidade de criar manual  e muito mais rsrs
  #get '/articles', to: 'articles#index'
  #get '/articles/:id', to: 'articles#show'

  
end
