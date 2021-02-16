class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit]

  def index
    @tasks = Task.all
  end

  def show 
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(strong_params)
    redirect_to task_path(@task)
  end

  def edit
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def strong_params
    params.require(:task).permit(:title, :details)
  end
end
