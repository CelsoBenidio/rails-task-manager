class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def tasks
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save

    redirect_to task_path(@task)
  end

   def edit
    #need id for edit
  end

  def update
    #need id for update
    @task.update(tasks_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:title, :details, :complete)
  end

end




