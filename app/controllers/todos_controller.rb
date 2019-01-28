class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def create
    @task = Task.find(params[:task_id])
    @todo = Todo.find_by(task: @task.id, user: current_user)
    unless @todo
      @todo = Todo.new(task: @task, user: current_user, done: true, done_at: Time.now)
      if @todo.save!
        redirect_to tasks_path, notice: 'Se ha modificado el estado de tu todo :)'
      else
        redirect_to tasks_path, alert: 'No se ha podido crear el todo :('
      end
    else
      if @todo.done?
        @todo.done = false
      else
        @todo.done = true
        @todo.done_at = Time.now
      end
      @todo.save!
      redirect_to tasks_path, notice: 'Se ha modificado el estado de tu todo :)'
    end
  end
  
  def profile
    @todos = current_user.todos
  end

  private

  def todo_params
    params.require(:todo).permit(:task_id, :done, :done_at)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
