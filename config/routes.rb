Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show', as: 'book'

  root 'books#index'
end
