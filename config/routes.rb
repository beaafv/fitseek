Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :workouts, only: [:index, :show] do
    resources :bookings, only: [:show, :create]
  end
  resources :instructors, only: [:show]
  resources :bookings, only: [:destroy]

  get '/profile', to: "pages#profile", as: :profile
  get '/dashboard', to: "pages#dashboard", as: :dashboard
end
