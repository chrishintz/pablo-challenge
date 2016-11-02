Rails.application.routes.draw do
  get    "/sign-out",     to: "sessions#sign_out",     as: :sign_out
  post   "/sign-in",      to: "sessions#sign_in",      as: :sign_in

  get 'users/signup',     to: 'users#new',            as: :sign_up
  get 'users/:id',        to: 'users#show',           as: :dashboard
  get  '/',                to: 'users#index'

  post 'users',           to: 'users#create'
  patch 'users/:id',      to: 'users#update'
  delete 'users/:id',     to: 'users#destroy'

  resources :books do
    member do
      get :delete
    end
  end

end
