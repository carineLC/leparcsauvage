class Blogpost < ApplicationRecord
  belongs_to :user

  validates :title, :description, :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
