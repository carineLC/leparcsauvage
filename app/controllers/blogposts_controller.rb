class BlogpostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @blogposts = Blogpost.all
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  private

  def blogpost_params
    params.require(:blogpost).permit(:id, :title, :description, :photo)
  end
end
