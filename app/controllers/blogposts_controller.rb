class BlogpostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @blogposts = Blogpost.all
  end

  def show
  end
end
