Rails.application.routes.draw do

  root 'user#index'

  get 'users/:id',        to: 'users#show'
  get 'users/new',        to: 'users#new'
  post 'users',           to: 'users#create'
  get 'users/:id/edit',   to: 'users#edit'
  patch 'users/:id',      to: 'users#update'
  get 'users/:id/delete', to: 'users#delete'
  delete 'users/:id',     to: 'users#destroy'

  get 'books',            to: 'books#index'
  get 'books/:id',        to: 'books#show'
  get 'books/new',        to: 'books#new'
  post 'books',           to: 'books#create'
  get 'books/:id/edit',   to: 'books#edit'
  patch 'books/:id',      to: 'books#update'
  get 'books/:id/delete', to: 'books#delete'
  delete 'books/:id',     to: 'books#destroy'

end
