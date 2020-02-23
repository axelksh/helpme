class Account::HelpOffersController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
  end
end
