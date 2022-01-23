Rails.application.routes.draw do
  root 'homes#index'

  resources :homes, only: %i[new create]

  resources :users
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :mandarats
  resources :targets
  resources :infos, only: %i[new create]

  namespace :api do
    namespace :v1 do
      # delete '/todos/destroy_all', to: 'todos#destroy_all'
      resources :portfolios
    end
  end
end
