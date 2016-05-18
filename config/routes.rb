Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts
  resources :users
  resources :posts
  resources :users

  get "posts_stats" => "stats#posts"

  get "search" => "search#search", as: :search
end
