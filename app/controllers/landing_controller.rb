class LandingController < ApplicationController
  def index
    @top_product = Product.most_reviewed_product
    @three_most_recent_products = Product.three_most_recent_added
    @made_in_usa = Product.find_usa_product('USA')
    p @top_product, @three_most_recent_products, @made_in_usa
  end

end
