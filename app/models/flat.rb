class Flat < ApplicationRecord
  GUESTS = (1..12).to_a
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :number_of_guests, inclusion: { in: GUESTS }
  validates :number_of_guests, numericality: { only_integer: true }
  validates :price_per_night, numericality: { only_integer: true }
end
