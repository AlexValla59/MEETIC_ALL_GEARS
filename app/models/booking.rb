class Booking < ApplicationRecord
# Associations
  belongs_to :item
  belongs_to :user

# Validations
  # Ajoutez vos validations ici, par exemple si vous avez un champ date :
  validates :date, presence: true

end
