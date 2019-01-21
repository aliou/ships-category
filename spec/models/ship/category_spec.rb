require 'rails_helper'

RSpec.describe Ship::Category do
  describe '.new' do
    context 'when the category is in the valid categories' do
      it 'creates a new Category' do
        raw_category = Ship::Category::VALID_CATEGORIES.sample
        category = Ship::Category.new(raw_category)
        expect(category).to be_a(Ship::Category)
      end
    end

    context 'when the category in not in the valid categories' do
      it 'raises an Argument error' do
        raw_category = Faker::Name.name
        expect { Ship::Category.new(raw_category) }
          .to raise_error(Ship::Category::InvalidCategory)
      end
    end
  end
end
