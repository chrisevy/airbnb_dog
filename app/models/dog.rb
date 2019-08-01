class Dog < ApplicationRecord
    belongs_to :city #plusieurs chiens pour une ville. 
    has_many :strolls #plusieurs promenade (stroll) par chien. 
    has_many :dogsitters, through: :strolls #un dog peut avoir plusieurs dogsitter via les stroll

end
