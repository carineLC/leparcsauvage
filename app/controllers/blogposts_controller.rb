class BlogpostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @blogposts = Blogpost.all
  end

  def show
  end
end
