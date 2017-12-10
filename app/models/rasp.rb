class Rasp < ApplicationRecord
  #belongs_to :user

  scope :search, (->(word) { where('rasp_id LIKE ?',
                                   "%#{sanitize_sql_like(word)}%",) })

 end
