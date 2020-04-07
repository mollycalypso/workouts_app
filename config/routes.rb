Rails.application.routes.draw do
  root to: "workouts#index"
  resources :workouts do
  resources :amounts, ony: [:create, :new]

  end
  resources :amounts, only: [:destroy]
  resources :exercises
end