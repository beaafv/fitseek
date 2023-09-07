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
  resources :instructors, only: [:index, :show]
  resources :bookings, only: [:destroy]

  get '/profile', to: "pages#profile", as: :profile
  get '/dashboard', to: "pages#dashboard", as: :dashboard
  get '/test', to: "pages#test", as: :test
  get '/fitseek_info', to: "pages#fitseek_info", as: :fitseek
  get '/refer_to_a_friend', to: "pages#refer_to_a_friend", as: :refertoafriend
  get '/add_points', to: 'pages#add_points', as: :add_points
end
