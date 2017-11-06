class Aluno < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  has_many :actions
end
