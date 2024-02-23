Rails.application.routes.draw do
  # get 'todos/index'
  get 'health/health'
  # post "/todos", to: "todos#create"
  scope :api do
    resources :todos, only: [:index, :create, :update, :destroy]
  end
end
