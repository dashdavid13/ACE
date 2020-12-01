Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :diets, only: [:show, :edit, :update, :delete]
  resources :workouts, only: [:show]
  resources :goals, only: [:index]

  # get '/welcome/', to: 'users#index', as: 'welcome'
  # get '/welcome/new', to: 'users#new', as: 'new_user'

end


