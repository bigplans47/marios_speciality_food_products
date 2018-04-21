Review.destroy_all
Product.destroy_all

50.times do |i|
  @product = Product.new(:name => Faker::Food.dish, :cost => Faker::Number.between(1,15), :country_of_origin =>'USA')
  if @product[:cost] > 8
    @product[:country_of_origin] = 'France'
  end
  @product.save!
  5.times do |z|
    @review = Review.create!(:author => Faker::FamilyGuy.character, :content_body => Faker::Lorem.characters(100), :rating => Faker::Number.between(1,5), :product_id =>  @product.id)
  end
end
