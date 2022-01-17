Rails.application.routes.draw do
  
  devise_for :users
  #rota padrÃO
  root 'articles#index'  
    
  resources :articles do
    resources :comments, only: %i[create destroy]
  end

  resources :categories, except: [:show]
  #criar rota manual
  #get '/articles', to: 'articles#index'
  #get '/articles/:id', to: 'articles#show'

  
end
