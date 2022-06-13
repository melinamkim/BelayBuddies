Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations}
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: %i[index show] do
    resources :reviews, only: %i[new create]
    resources :chatrooms, only: %i[create]
  end

  resources :availabilities, only: %i[new create]

  resources :chatrooms, only: %i[show index] do
    resources :messages, only: %i[new create]
  end

  get "/my_profile", to: "users#my_profile", as: :my_profile
end
