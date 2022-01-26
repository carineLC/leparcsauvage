class Picture < ApplicationRecord
    mount_uploader :photo, PhotoUploader

    validates :location, :photo, presence: true

    LOCATIONS = ['accueil', 'ferme pédagogique', 'parc de vision', 'plan', 'volerie'].freeze

    scope :home, -> { where(location: 'accueil').order(id: :desc).limit(4) }
    scope :falconry, -> { where(location: 'volerie').order(id: :desc).limit(4) }
    scope :pedagogical_farm, -> { where(location: 'ferme pédagogique').order(id: :desc).limit(4) }
    scope :plan, -> { where(location: 'plan').order(id: :desc).limit(1).first }
    scope :vision_park, -> { where(location: 'parc de vision').order(id: :desc).limit(4) }
end
