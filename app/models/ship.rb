class Ship < ApplicationRecord
  attribute :category, :ship_category

  validates :name, presence: true
  validates :category, presence: true
end
