class Product < ActiveRecord::Base
  validates :name, :cost, :country_of_origin, :presence => true
  has_many :reviews
end
