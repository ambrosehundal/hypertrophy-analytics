Rails.application.routes.draw do
  #resources :exercise_sets
  resources :exercise_lists
  devise_for :users

  resources :users do
    resources :workouts 
  end

  resources :workouts do
    resources :exercises
  end

  resources :exercises, shallow: true do
    resources :exercise_sets, only: [:new, :index, :create, :destroy]
  end

 


  #route to have a directory of exercises
  #resources :exercises



 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
