# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

For local setup
use ruby '2.7.0'


use 'rails', '~> 6.0.3', '>= 6.0.3.4'

step1: bundle install
step2: install postgres if not
step3: rake db:create && rake db:migrate
step4: use ruby and rails version same as gemfile version
step5: rails s

For running test cases:
rake db:create RAILS_ENV=test
rake db:migrate RAILS_ENV=test
controller test only
rails test test/controllers/categories_controller_test.rb
rails test test/controllers/items_controller_test.rb
