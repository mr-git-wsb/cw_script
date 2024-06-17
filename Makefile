# Makefile

# Installs the necessary dependencies
install:
	gem install bundler
	bundle install

# Runs the unit tests
test:
	rspec

# Runs the application
run:
	ruby calculator.rb
