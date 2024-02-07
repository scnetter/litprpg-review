Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  patch '/books/:id' => 'books#update'

  root 'books#index'
end
