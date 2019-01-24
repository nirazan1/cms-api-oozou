# README

Prerequisite
* Ruby 2.6.0
* Rails 5.2.2
* Redis
* Postgres

Setup:
1. run `bundle install`
2. setup db `rake db:setup`
2. setup seed data `rake db:seed`
3. start redis 'redis-server'
4. start sidekiq 'bundle exec sidekiq'
5. start rails server `bundle exec rails server`
6. run react client (see react client README)

