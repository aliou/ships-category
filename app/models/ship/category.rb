class Ship::Category
  VALID_CATEGORIES = %w(
    shuttle supply_carrier troop_carrier war_ship
  ).freeze

  class InvalidCategory < ArgumentError
    def initialize(category)
      super(
        "expected one of #{Ship::Category::VALID_CATEGORIES.inspect}, " \
        "got #{category.inspect}"
      )
    end
  end

  def initialize(category)
    raise InvalidCategory, category unless category.in?(VALID_CATEGORIES)

    @raw_category = category
  end

  # Conform to comparable.
  def <=>(other)
    to_s <=> other.to_s
  end

  def to_s
    raw_category
  end

  private

  attr_reader :raw_category
end
