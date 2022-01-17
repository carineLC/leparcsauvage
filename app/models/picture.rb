class Picture < ApplicationRecord
    mount_uploader :photo, PhotoUploader

    LOCATIONS = ['accueil'].freeze
end