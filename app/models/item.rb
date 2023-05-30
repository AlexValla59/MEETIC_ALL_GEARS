class Item < ApplicationRecord
  # Associations
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  UNIVERS = ["Starwars", "Seigneurs des anneaux", "Harry Potter", "Indiana Jones", "Men In Black", "Doctor who", "Shinnig", "5ème élément", "autres"]
  validates :univers, inclusion: { in: UNIVERS }

end
