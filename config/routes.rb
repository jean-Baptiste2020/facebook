Rails.application.routes.draw do
  root "users#new"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :posts do
    collection do
      post :confirm
    end
  end
  get "/favorite/:id", to: "favorites#create"
  get "/favorites", to: "favorites#index"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end