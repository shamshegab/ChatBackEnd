require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
  post '/applications', to: 'applications#create'
  get '/applications/:token', to: 'applications#show'
  patch '/applications/:token', to: 'applications#update'
  post 'applications/:token/chats', to: 'chats#create'
  get 'applications/:token/chats', to: 'chats#index'
  get 'applications/:token/chats/:chat', to: 'chats#show'
  get 'applications/:token/chats/:chat/messeges', to: 'messeges#search_message' 
  post 'applications/:token/chats/:chat/messeges', to: 'messeges#add_message'
end
