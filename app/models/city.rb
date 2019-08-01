class City < ApplicationRecord
    has_many :dogs
    has_many :dogsitters
    #Chaque ville contient plusieurs chiens (dogs).
    #Chaque villes contient plusieurs dogsitters. 
end
