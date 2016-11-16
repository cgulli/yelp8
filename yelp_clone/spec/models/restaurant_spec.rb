require 'rails_helper'

describe Restaurant, type: :model do
  it 'is not valid with a name less than 3 characters' do
    restaurant = Restaurant.new(name: "DQ")
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end

  it 'does not let you add duplicate restaurants' do
    Restaurant.create(name: "Dennys")
    restaurant = Restaurant.new(name: "Dennys")
    expect(restaurant).to have(1).error_on(:name)
  end
end
