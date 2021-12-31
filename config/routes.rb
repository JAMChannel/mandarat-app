Rails.application.routes.draw do
  
  root "homes#index"
  
  resources :users

  resources :mandarats

  namespace :api do
    namespace :v1 do
      # delete '/todos/destroy_all', to: 'todos#destroy_all'
      resources :portfolios
    end
  end

end
