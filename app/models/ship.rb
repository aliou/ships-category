class Ship < ApplicationRecord
  attribute :category, :ship_category
  attribute :test_attribute, :integer

  validates :name, presence: true
  validates :category, presence: true
end
