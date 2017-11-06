class Sala < ApplicationRecord
  enum status: [:active, :inactive]

  mount_uploader :photo, PhotoUploader
end
