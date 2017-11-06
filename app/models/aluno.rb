class Aluno < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  has_many :actions
  mount_uploader :photo, PhotoUploader
end
