require 'rails_helper'

describe Review, type: :model do
  it "is invalid if rating is more than five" do
    review = Review.new(rating: 42)
    expect(review).to have(1).error_on(:rating)
  end
end
