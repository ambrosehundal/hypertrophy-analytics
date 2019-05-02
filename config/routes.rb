Rails.application.routes.draw do
  resources :exercise_lists
  devise_for :users

  resources :users do
    resources :workouts do
      resources :exercises
    end
  end

  #route to have a directory of exercises
  resources :exercises



 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
