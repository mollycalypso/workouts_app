Rails.application.routes.draw do
  root to: "workouts#index"
  resources :workouts do
  resources :amounts
  end
  resources :exercises
end