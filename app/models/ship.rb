class Ship < ApplicationRecord
  VALID_CATEGORIES = %w(
    shuttle supply_carrier troop_carrier war_ship
  ).freeze

  validates :name, presence: true
  validates :category, presence: true

  validates :category, inclusion: { in: VALID_CATEGORIES }
end
