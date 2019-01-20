class BlogpostsController < ApplicationController
  def index
    @blogposts = Blogpost.all
  end
end
