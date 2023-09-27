Rails.application.routes.draw do

  get "/homes/about" => "homes#about", as: "about"

  resources :users, only: [:new, :index, :show]
  resources :bookes, only: [:new, :index, :show]

  devise_for :books
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
