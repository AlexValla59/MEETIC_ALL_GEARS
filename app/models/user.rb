class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :bookings
  has_many :items

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  UNIVERS = ["Starwars", "Seigneurs des anneaux", "Harry Potter", "Indiana Jones", "Men In Black", "Doctor who", "Shinnig", "5ème élément", "autres"]
  validates :univers, inclusion: { in: UNIVERS }

end
