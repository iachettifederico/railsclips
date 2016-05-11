Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :posts
  resources :users

  get "posts_stats" => "stats#posts"
end
