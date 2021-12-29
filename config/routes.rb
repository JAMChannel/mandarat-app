Rails.application.routes.draw do
  # get 'homes/index'
  root "homes#index"
  namespace :api do
    namespace :v1 do
      # delete '/todos/destroy_all', to: 'todos#destroy_all'
      resources :portfolios
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
