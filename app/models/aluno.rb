class Aluno < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  has_many :actions
  #has_many :salas
  has_and_belongs_to_many :salas
  mount_uploader :photo, PhotoUploader
end
