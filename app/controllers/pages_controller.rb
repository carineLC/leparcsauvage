class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def pedagogical_farm
  end

  def falconry
  end

  def vision_park
  end

  def backup_center
  end

  def team
  end

  def partnerships
  end

  def practical_infos
  end

  def legal_notices
  end
end
