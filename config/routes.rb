Rails.application.routes.draw do
  resources :books
  get '/all_books' => 'books#all_books'

  root 'books#index'
end
