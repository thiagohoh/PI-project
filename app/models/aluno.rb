class Aluno < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  has_many :actions
  has_many :salas
  mount_uploader :photo, PhotoUploader
end
