class HelpRequestsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @task = Task.find(params[:task_id])
  end

  def create
    @task = Task.find(params[:task_id])
    @task.help_requests.create(help_request_params.merge(user_id: current_user.id))

    redirect_to account_user_path(current_user.id)
  end

  private
    def help_request_params
      params.require(:help_request).permit(:email, :phone, :comment)
    end
end
