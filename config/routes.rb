Rails.application.routes.draw do
  resources :reviews
  resources :books
  get '/all_books' => 'books#all_books'

  root 'books#index'
end
