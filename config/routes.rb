Rails.application.routes.draw do

  root 'users#index'

  get 'users/:id',        to: 'users#show'
  get 'users/signup',     to: 'users#new'
  post 'users',           to: 'users#create'
  get 'users/:id/edit',   to: 'users#edit'
  patch 'users/:id',      to: 'users#update'
  get 'users/:id/delete', to: 'users#delete'
  delete 'users/:id',     to: 'users#destroy'

  resources :books do
    member do
      get :delete
    end
  end

end
