class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def accueil
  end

  def ferme_pedagogique
  end

  def fauconnerie
  end

  def parc_de_vision
  end

  def centre_de_sauvegarde
  end

  def equipe
  end

  def partenariats
  end

  def infos_pratiques
  end
end
