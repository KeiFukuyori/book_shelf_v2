Rails.application.routes.draw do
  # get 'books/index'
  # →resources :booksに変更する
  resources :books
  root "books#index"
  
end
