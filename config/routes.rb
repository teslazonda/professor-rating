Rails.application.routes.draw do
  resources :student_stories
  resources :professors
  root to: 'professors#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
