class Product < ActiveRecord::Base
  validates :name, :cost, :country_of_origin, :presence => true
  has_many :reviews
  scope :most_reviewed_product, -> {
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
  }
  scope :three_most_recent_added, -> {
    order(:created_at => :desc).limit(3)
  }
  scope :find_usa_product, -> (country_parameter) {
    where(:country_of_origin => country_parameter)
  }
end
