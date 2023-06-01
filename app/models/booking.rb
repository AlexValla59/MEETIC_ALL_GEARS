class Booking < ApplicationRecord
# Associations
  belongs_to :item
  belongs_to :user

# Validations
  validates :date, presence: true

  validates :start_at, :end_at, presence: true
end
