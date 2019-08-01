class Dogsitter < ApplicationRecord
    belongs_to :city #Plusieurs dogsitters par ville.
    has_many :strolls #Plusieurs promenade (stroll) par dogsitter.
    has_many :dogs, through: :strolls #un dogsitter peut avoir plusieurs dogs via les stroll
end
