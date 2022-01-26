class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @blogposts = Blogpost.order('created_at DESC')
    @plan = Picture.plan
    @pictures = Picture.home
  end

  def pedagogical_farm 
    @pictures = Picture.pedagogical_farm
  end

  def falconry
    @pictures = Picture.falconry
  end

  def vision_park
    @pictures = Picture.vision_park
  end

  def backup_center; end

  def team; end

  def partnerships; end

  def legal_notices; end

  def schedules; end

  def prices; end

  def access; end
end
