# eTwitter

This repository is for studies only.

Things you may want to cover:

## Ruby version

 - Ruby 3.0.1
 - Rails 6.0.4

## System dependencies

 - Devise
 - Bootstrap
 - jquery-rails
 - pg
 - pry-byebug
 - rspec-rails
 - factory_bot_rails
 - rubocop-rails

## Configuration

 - Install ruby version 3.0.1 (use a version manager)
 - Install rails 6.0.4 (use rubygems)
 - Clone this repository.
 - run: 
 ```sh
 bundle install
 ```

 - run: 
 ```sh
 yarn install --check-files
 ```

## Database creation
 - Installnstall PostgreSQL
 - run: 
 ```sh
 sudo -i -u postgres (to access the postgres user)
 ```
 - run: 
 ```sh
 psql (to access the database)
 ```
 - run: 
 ```sh
 CREATE ROLE etwitter WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'etwitter';
 ```
 - run: 
 ```sh
 CREATE DATABASE etwitter OWNER etwitter;
 ```

## Deployment instructions

 - run: 
 ```sh
 rails server
```

## Images
![Login](/app/assets/images/login.png)
![Sign up](/app/assets/images/sign_up.png)
![Home page](/app/assets/images/home_page.png)
![New post](/app/assets/images/new_post.png)
![Search](/app/assets/images/search_user.png)
![User follow](/app/assets/images/follow.png)
![Notification](/app/assets/images/notification.png)
