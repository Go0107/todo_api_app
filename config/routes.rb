Rails.application.routes.draw do
  get 'todos/index'
  get 'health/health'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :todos
  post "/todos", to: "todos#create"
  # Defines the root path route ("/")
  # root "articles#index"
end
