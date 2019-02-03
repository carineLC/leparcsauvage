Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  ActiveAdmin.routes(self)

  root to: 'pages#home'

  resources :blogposts, only: %i[show index], path: 'vie-du-parc'

  get 'ferme_pedagogique', to: 'pages#pedagogical_farm', as: :pedagogical_farm
  get 'fauconnerie', to: 'pages#falconry', as: :falconry
  get 'parc_de_vision', to: 'pages#vision_park', as: :vision_park
  get 'centre_de_sauvegarde', to: 'pages#backup_center', as: :backup_center

  get 'equipe', to: 'pages#team', as: :team
  get 'partenariats', to: 'pages#partnerships', as: :partnerships
  get 'mentions_legales', to: 'pages#legal_notices', as: :legal_notices

  get 'horaires', to: 'pages#schedules', as: :schedules
  get 'tarifs', to: 'pages#prices', as: :prices
  get 'acces', to: 'pages#access', as: :access
end
