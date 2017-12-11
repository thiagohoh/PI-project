class TheRasp < ApplicationRecord



  def self.search(term)
    if term
      where('rfid LIKE ?',"%#{term}%")

    else
      all
    end

  end

#fazer uma def que fala se pode ou nao entrar
end
