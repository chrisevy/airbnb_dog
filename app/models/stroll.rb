class Stroll < ApplicationRecord
    belongs_to :dog
    belongs_to :dogsitter
    #Un dogsitter peut promener plusieurs dog lors d'une stroll. 
end
