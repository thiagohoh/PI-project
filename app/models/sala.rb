class Sala < ApplicationRecord
  enum status: [:active, :inactive]
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
