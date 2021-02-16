class TasksController < ApplicationController
  before_action :find_task, only: [:show]

  def index
    @tasks = Task.all
  end

  def show 
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end
end
