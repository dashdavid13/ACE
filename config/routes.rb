Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :diets, only: [:show, :edit, :update, :delete]
  resources :workouts, only: [:show]
  resources :goals, only: [:index]
  resources :goal_diets

  # get '/goal_diets/new', to: 'goal_diets#new', as: 'new_goal_diet'
  # post '/goal_diets', to: 'goal_diets#create'

  delete "/sessions/logout", to: 'sessions#logout', as: 'logout'
  get "/sessions/new", to: 'sessions#new', as: 'new_login'
  post '/sessions/login', to: 'sessions#login', as: 'login'




  # get '/welcome/', to: 'users#index', as: 'welcome'
  # get '/welcome/new', to: 'users#new', as: 'new_user'

end


