class BreedingPet < ApplicationRecord
  belongs_to :customer
  belongs_to :fatherpet
  belongs_to :motherpet

  def index
  end
end
