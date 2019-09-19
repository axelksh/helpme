class Account::TasksController < ApplicationController
  before_action :authenticate_user!

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build task_params
    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :descr, images: [])
    end
end
