Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :workouts, only: [:index, :show] do
    collection do
      get :all, :mobility, :strength, :cardio, :outdoors
    end
    resources :bookings, only: [:show,:new,:create ]
  end
  resources :instructors, only: [:show]
  resources :bookings, only: [:destroy]

  get '/profile', to: "pages#profile", as: :profile
  get '/dashboard', to: "pages#dashboard", as: :dashboard
end
