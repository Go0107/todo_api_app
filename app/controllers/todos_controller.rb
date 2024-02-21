class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
    # render status: 200, json: { todos: @todos }
  end

  def create
    @todo = Todo.new(todo_params)
    # データベースに保存します
    if @todo.save
      render json: { todo: @todo }, status: :created
    else
      render json: { errors: @todo.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @todo.update(todo_params)
      render json: { todo: @todo }
    else
      render json: { errors: @todo.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
