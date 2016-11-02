Rails.application.routes.draw do

  root 'users#index'

  get 'users/signup',     to: 'users#new',            as: :sign_up
  get 'users/:id',        to: 'users#show'
  post 'users',           to: 'users#create'
  get 'users/:id/edit',   to: 'users#edit'
  patch 'users/:id',      to: 'users#update'
  get 'users/:id/delete', to: 'users#delete'
  delete 'users/:id',     to: 'users#destroy'

  get    "/sign-out",     to: "sessions#sign_out",     as: :sign_out
  post   "/sign-in",      to: "sessions#sign_in",      as: :sign_in

  resources :books do
    member do
      get :delete
    end
  end

end
