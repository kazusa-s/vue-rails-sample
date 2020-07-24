# README

- This project initially icludes

  - Ruby 
  - Ruby on Rails
  - webpacker
  - rubocop
  - rspec
  - vuejs
  - docker
  - circleCI

- Ruby version

  - 2.7.1

- Rails version

  - 6.0.3.2

- Setup

  `docker-compose up`

- how to activate webpack-dev-server

  - (1) attach container
  
    `docker-compose run --rm app bash`

  - (2) run command below
  
    `./bin/webpack-dev-server`

- how to use rubocop auto correct

  `bundle exec rubocop -A --only HogeHoge`

  https://stackoverflow.com/questions/62984228/rubocop-autocorrect-for-frozenstringliteralcomment-not-working
