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

  VALID_CATEGORIES.each { |raw_cat| const_set(raw_cat.upcase, new(raw_cat)) }

  # Conform to comparable.
  def <=>(other)
    position <=> other.position
  end

  def position
    @position ||= VALID_CATEGORIES.index(to_s)
  end

  def to_s
    raw_category
  end

  def inspect
    "#{self.class}::#{raw_category.upcase}"
  end

  private

  attr_reader :raw_category
end
