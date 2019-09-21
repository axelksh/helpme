class RequestsController < ApplicationController
  before_action :authenticate_user!

  def new
    @request = Request.new
  end
end
