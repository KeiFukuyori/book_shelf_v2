Rails.application.routes.draw do
  resources :reviews
  # get 'books/index'
  # →resources :booksに変更する
  resources :books
  root "books#index"
  
end
