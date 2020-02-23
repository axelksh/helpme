class HelpOffersController < ApplicationController
  # before_action :authenticate_user!

  def new
    @task = Task.find(params[:task_id])
  end

  def create
    @task = Task.find(params[:task_id])
    params = help_offer_params.merge user_id: current_user.id
    if @task.help_offers.create params
      @task.offered!
      redirect_to account_user_path(current_user.id)
    else
      render 'new'
    end
  end

  private
    def help_offer_params
      params.require(:help_offer).permit(:email, :phone, :comment)
    end
end
