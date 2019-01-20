class Ship < ApplicationRecord
  VALID_SHIP_TYPES = %w(
    shuttle supply_carrier troop_carrier war_ship
  ).freeze

  validates :name, presence: true
  validates :ship_type, presence: true

  validates :ship_type, inclusion: { in: VALID_SHIP_TYPES }
end
