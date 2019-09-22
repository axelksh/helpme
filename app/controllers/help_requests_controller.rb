class HelpRequestsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @task = Task.find(params[:task_id])
  end

  def create
    @task = Task.find(params[:task_id])
    params = help_request_params.merge user_id: current_user.id
    if @task.help_requests.create params
      @task.requested!
      redirect_to account_user_path(current_user.id)
    else
      render 'new'
    end
  end

  private
    def help_request_params
      params.require(:help_request).permit(:email, :phone, :comment)
    end
end
