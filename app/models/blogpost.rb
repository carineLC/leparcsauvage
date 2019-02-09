class Blogpost < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  validates :title, :description, :photo, presence: true

  mount_uploader :photo, PhotoUploader

  def description_without_tags
    description.gsub!(/<[^>]*>/, '')
  end
end
