Rails.application.routes.draw do
  root to: "workouts#index"
  resources :workouts do
    collection do
    end
  end
end