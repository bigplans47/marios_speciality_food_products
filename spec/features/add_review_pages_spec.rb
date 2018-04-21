require 'rails_helper'

describe "the add a review process, update review and remove review" do
  it 'add a review' do
    @product = Product.create(:name => 'Apple',:cost => 2, :country_of_origin => 'USA')
    visit new_product_review_path(@product)
    fill_in 'Author', :with => 'Bill Smith'
    fill_in 'Content body', :with => "So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown "
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown '
  end
  # :author, :content_body, :rating

  it 'updates review' do
    @product = Product.create(:name => 'Apple',:cost => 2, :country_of_origin => 'USA')
    @review = Review.create(:author => 'Bill Smith', :content_body => 'So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown', :rating => '5', :product_id =>  @product.id)
    visit edit_product_review_path(@product, @review)
    fill_in 'Content body', :with => 'My favorite! So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown'
    click_on 'Update Review'
    expect(page).to have_content 'My favorite! So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown'
  end

  it 'deletes review' do
    @product = Product.create(:name => 'Apple',:cost => 2, :country_of_origin => 'USA')
    @review = Review.create(:author => 'Bill Smith', :content_body => 'So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown', :rating => '5', :product_id =>  @product.id)
    visit product_path(@product)
    click_on 'Delete Review'
    expect(page).to have_no_content 'So good, An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide as a fruit tree, and is the most widely grown'
  end

end
