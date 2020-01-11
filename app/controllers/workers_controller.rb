class WorkersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @workers = Worker.order('created_at DESC')
  end
end
