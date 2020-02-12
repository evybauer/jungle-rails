# Jungle

A mini e-commerce application built with Rails 4.2.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* bcrypt
* rspec-rails
* capybara
* poltergeist
* database_cleaner


## Final Product

!["Screenshot of Main Page"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Home%20Page.png)
!["Screenshot of Login Page"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Login%20Page.png)
!["Screenshot of Sign Up Page"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Sign%20Up%20Page.png)
!["Screenshot of Add Products to Cart"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Add%20Products%20to%20Cart.png)
!["Screenshot of Admin >> Dashboard Page"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Admin%20Dashboard.png)
!["Screenshot of Admin >> Products Inventory Page"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Admin%20Products%20Inventory.png)
!["Screenshot of Admin >> Products Add New Product to Inventory"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Admin%20Add%20New%20Product%20to%20Inventory.png)
!["Screenshot of Admin >> Categories List Page"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Admin%20Add%20New%20Category%20to%20Products.png)
!["Screenshot of Admin >> Categories Add New Category to List"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Admin%20Add%20New%20Category%20to%20Products.png)
!["Screenshot of Empty Cart"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Empty%20Cart%20Message.png)
!["Screenshot of Payment Environment/Payment Pop Up"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Stripe's%20Payment%20Environment.png)
!["Screenshot of Order Confirmation"](https://github.com/evybauer/jungle-rails/blob/master/docs/Screenshot%20Order%20Confirmation%20and%20Empty%20Cart.png)
