class Sala < ApplicationRecord
  enum status: [:active, :inactive]
  belongs_to :user
  has_and_belongs_to_many :alunos
  mount_uploader :photo, PhotoUploader
end
