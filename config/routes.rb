Rails.application.routes.draw do
  root 'articles#index' #deixa rota como padrĂ£o 
    

  resources :articles #faz todo crud com os helpers abaixo sem a necessidade de criar manual  e muito mais rsrs
  #get '/articles', to: 'articles#index'
  #get '/articles/:id', to: 'articles#show'

  
end