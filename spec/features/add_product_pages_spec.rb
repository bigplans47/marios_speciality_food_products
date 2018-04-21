require 'rails_helper'

describe "the add a product process, update product and remove product" do
  it 'adds a new product and displays name' do
    visit products_path
    click_on 'Add New Product'
    fill_in 'Name', :with => 'Apple'
    fill_in 'Cost', :with => 2
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Apple'
  end

  it 'updates product' do
    @product = Product.create(:name => 'Apple',:cost => 2, :country_of_origin => 'USA')
    visit products_path
    click_on 'Apple'
    click_on 'Edit Product'
    fill_in 'Name', :with => 'Yellow Apple'
    click_on 'Update Product'
    expect(page).to have_content 'Yellow Apple'
  end

  it 'removes product' do
    @product = Product.create(:name => 'Apple',:cost => 2, :country_of_origin => 'USA')
    visit products_path
    click_on 'Apple'
    click_on 'Delete'
    expect(page).to have_no_content 'Apple'
  end

end
