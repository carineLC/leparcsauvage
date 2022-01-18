class Picture < ApplicationRecord
    mount_uploader :photo, PhotoUploader

    validates :location, :photo, presence: true

    LOCATIONS = ['accueil', 'plan'].freeze

    scope :home, -> { where(location: 'accueil').order(id: :desc).limit(4) }
    scope :plan, -> { where(location: 'plan').order(id: :desc).limit(1).first }
end