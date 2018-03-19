# rails new
rails new rails-template \
--skip-yarn \
--action-cable \
--skip-coffee \
--skip-turbolinks \
--skip-test \
--skip-system-test \
--skip-bundle

# bundle install
bundle install --path vendor/bundle

# server up
bundle exec rails s -b 0.0.0.0 -p 8888

# devise install
$ rails g devise:install
$ rails g devise:views
$ rails g devise User
