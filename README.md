![Ticketing](/img/marios_landing_page.png?raw=true "marios_landing_page")

Mario's Speciality Food Products Landing Page

![Ticketing](/img/all_products.png?raw=true "all_products")

All Products Page

![Ticketing](/img/all_products.png?raw=true "all_products")

Individual Product with ability to add review

![Ticketing](/img/single_product_screen.png?raw=true "single_product_screen")

Individual Product with ability to add review and validations running, note the error message due to short review length

![Ticketing](/img/review_with_validations.png?raw=true "review_with_validations")

# README

This README would normally document whatever steps are necessary to get the
application up and running.

After cloning run $ bundle install

Then setup database with $rake db:create

Run Migration to make tables $ rake db:migrate

Prepare Test Enviornment $ rake db:test:prepare

To see passing testing run $ rspec

To run the test again with a cleared test database do 1)$rake db:test:prepare 2)$rspec

To create a preview site with dummy values loaded in run $ rake db:seed

To launch the preview site run $ rails server

Project
You've in the running for a freelance development job, as the developer for Mario's Speciality Food Products. Mario is concerned about the information in his database being correct; your goal for today is to have the most comprehensive validations and callbacks to ensure information is properly saved and formatted in the database.

Database
The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country of origin. All reviews should have author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well.

Landing Page
The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below.

Products
The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

Site admins should be able to add, update and delete new products. (Don't worry about user authentication; assume everyone who visits the site is an admin for now).
Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating; that's included in the further exploration section.)
Users should be able to add a review to a product.
Scopes
Your site should use scopes to display the following information on the site:

The product with the most reviews.
The three most recently added products.
All products made in the USA for buyers that want to buy local products.
Validations
Your site should include validations for the following:

All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.
Seeding
Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.
Overall Styling
You'll be demoing this site to the CEO of Mario's Specialty Foods, so it should look presentable.
