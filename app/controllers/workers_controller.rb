class WorkersController < ApplicationController
  def index
    @workers = Worker.order('created_at DESC')
  end
end
