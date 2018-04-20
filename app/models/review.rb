class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :content_body, :rating, :presence => true
  validates :rating, numericality: { only_integer: true} #railsdocs
  validates_numericality_of :rating, less_than_or_equal_to: 5 #shouldamatchers docs
  validates_numericality_of :rating, greater_than_or_equal_to: 1
end

# greater_than_or_equal_to: 1, less_then_or_equal_to: 5
