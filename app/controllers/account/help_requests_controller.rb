class Account::HelpRequestsController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
  end
end
