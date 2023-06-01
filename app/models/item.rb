class Item < ApplicationRecord
  # Associations
  has_many :bookings
  # belongs_to :user  #ici

  # Validations

  validates :name, presence: true, uniqueness: true
  UNIVERS = ["Star Wars", "Le Seigneurs Des Anneaux", "Harry Potter", "Indiana Jones", "Men in Black", "Forrest Gump", "Doctor Who", "Shinnig", "5ème élément", "autres"]
  validates :univers, inclusion: { in: UNIVERS }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
