class AddCityToDogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :city, foreign_key: true
    add_reference :dogsitters, :city, foreign_key: true
    #On a conçu une 2 relation 1-N entre tables dont la "foreign_key" est placée sur city. 
    #Car chaque ville contient plusieurs promeneurs et plusieurs chiens 
    #mais un chien et un promeneur ne peuvent appartenir qu'a une ville.
  end
end
