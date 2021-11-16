# eTwitter

This repository is for studies only.

Things you may want to cover:

* Ruby version

 - Ruby 3.0.1
 - Rails 6.0.4

* System dependencies

 - Devise
 - Bootstrap
 - jquery-rails
 - pg
 - pry-byebug
 - rspec-rails
 - factory_bot_rails
 - rubocop-rails

* Configuration

 - Install ruby version 3.0.1 (use a version manager)
 - Install rails 6.0.4 (use rubygems)
 - Clone this repository.
 - run: bundle install
 - run: yarn install --check-files

* Database creation
 - Installnstall PostgreSQL
 - run: sudo -i -u postgres (to access the postgres user)
 - run: psql (to access the database)
 - run: CREATE ROLE etwitter WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'etwitter';
 - run: CREATE DATABASE etwitter OWNER etwitter;

* Deployment instructions

 - run: rails server

