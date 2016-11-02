Rails.application.routes.draw do

  root 'user#index'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  post 'users/create'
  get 'users/edit'
  patch 'users/update'
  get 'users/delete'
  delete 'users/delete'

  get 'books/index'
  get 'books/show'
  get 'books/new'
  post 'books/create'
  get 'books/edit'
  patch 'books/update'
  get 'books/delete'
  delete 'books/delete'

end
