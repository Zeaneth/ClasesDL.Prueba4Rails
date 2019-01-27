class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = current_user.todos
  end

  def show
  end

  def create
    @task = Task.find(params[:task_id])
    @todo = Todo.new(task: @task, user: current_user, done: false)
    if @todo.save!
      redirect_to tasks_path, notice: 'Se ha creado un nuevo todo :)'
    else
      redirect_to tasks_path, alert: 'No se ha podido crear el todo :('
    end
  end

  def delete
    
  end

  def edit
  end

  private

  def todo_params
    params.require(:todo).permit(:task_id, :done, :done_at)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
