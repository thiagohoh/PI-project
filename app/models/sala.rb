class Sala < ApplicationRecord
  enum status: [:active, :inactive]
end
