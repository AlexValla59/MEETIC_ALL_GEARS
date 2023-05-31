class Item < ApplicationRecord
  # Associations
  has_many :bookings
  # belongs_to :user

  # Validations

  validates :name, presence: true, uniqueness: true
  UNIVERS = ["Star Wars", "Le Seigneurs Des Anneaux", "Harry Potter", "Indiana Jones", "Men in Black", "Forrest Gump", "Doctor Who", "Shinnig", "5ème élément", "autres"]
  validates :univers, inclusion: { in: UNIVERS }

end
