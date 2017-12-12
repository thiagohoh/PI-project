class TheRasp < ApplicationRecord

  def self.search(term, term2)
      self.where('rfid LIKE ? and name LIKE ?',"%#{term}%","%#{term2}%")
  end

#fazer uma def que fala se pode ou nao entrar
end
