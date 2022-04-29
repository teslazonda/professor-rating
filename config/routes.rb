Rails.application.routes.draw do
  devise_for :users
  resources :professors do
    resources :student_stories, only: [ :new, :create, :index ]
  end

  root to: 'professors#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
