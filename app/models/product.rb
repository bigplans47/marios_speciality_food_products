class Product < ActiveRecord::Base
  validates :name, :cost, :country_of_origin, :presence => true
  has_many :reviews
  scope :most_reviews, -> {
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
  }
end
