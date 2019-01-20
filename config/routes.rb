Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  # root to: 'pages#accueil'

  resources :blogposts

  get "ferme-pedagogique", to: 'pages#ferme_pedagogique'
  get "fauconnerie", to: 'pages#fauconnerie'
  get "parc-de-vision", to: 'pages#parc_de_vision'
  get "centre-de-sauvegarde", to: 'pages#centre_de_sauvegarde'
  get "equipe", to: 'pages#equipe'
  get "partenariats", to: 'pages#partenariats'
  get "infos-pratiques", to: 'pages#infos_pratiques'
end
