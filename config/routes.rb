Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  ActiveAdmin.routes(self)

  root to: 'pages#home'

  resources :blogposts, only: %i[show index], path: 'vie-du-parc'
  resources :workers, only: %i[index]

  get 'ferme-pedagogique', to: 'pages#pedagogical_farm', as: :pedagogical_farm
  get 'volerie', to: 'pages#falconry', as: :falconry
  get 'parc-de-vision', to: 'pages#vision_park', as: :vision_park
  get 'centre-de-sauvegarde', to: 'pages#backup_center', as: :backup_center

  get 'partenariats', to: 'pages#partnerships', as: :partnerships
  get 'mentions-legales', to: 'pages#legal_notices', as: :legal_notices

  get 'horaires', to: 'pages#schedules', as: :schedules
  get 'tarifs', to: 'pages#prices', as: :prices
  get 'acces', to: 'pages#access', as: :access
end
