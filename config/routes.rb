Rails.application.routes.draw do
  devise_for :users
  root to: "workouts#index"
  delete 'workouts/:id', to: 'workouts#destroy', as: "destroy_workouts"
  resources :workouts, only: [:edit, :update, :show, :new, :create, :index] do
  resources :amounts
  end
  delete 'exercises/:id', to: 'exercises#destroy', as: "destroy_exercises"
  resources :exercises, except: [:destroy]
end
