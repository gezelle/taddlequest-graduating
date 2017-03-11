Rails.application.routes.draw do
    get 'weapons' => 'weapons#index'
  get 'weapons/new' => 'weapons#new'
  post 'weapons' => 'weapons#create'
  get 'weapons/:id' => 'weapons#show'
  get 'weapons/:id/edit' => 'weapons#edit'
  patch 'weapons/:id/edit' => 'weapons#update'

  get 'weapons/:id/delete' => 'weapons#delete'

  get '/index' => 'pages#index'
  
  get '/page1' => 'pages#page1'
  get '/page2' => 'pages#page2'

   get '/page3' => 'pages#page3'
   get '/page4' => 'pages#page4'
  get '/inventory' => 'pages#inventory'
  get '/status' => 'pages#status'
  get '/victory' => 'pages#victory'
  get '/defeat' => 'pages#defeat'

root :to => 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
