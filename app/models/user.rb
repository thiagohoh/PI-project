class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum kind: [:professor, :adm, :limpeza]
  enum status: [:active, :inactive]

  has_many :alunos
  has_many :salas
  has_many :actions
  mount_uploader :photo, PhotoUploader
end
