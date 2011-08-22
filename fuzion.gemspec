Gem::Specification.new do |s|
	s.name = "fuzion"
	s.version = "0.0.1"
	s.authors = ["Eduardo Casanova Cuesta"]
	s.summary = "A Rails engine wrapping Fuzion Role Playing Game (RPG) rules."
	s.description = "A Rails engine wrapping Fuzion Role Playing Game (RPG) rules."
	s.email = "ecasanovac@gmail.com"
	s.homepage = "https://github.com/roendal/fuzion"
	s.files = `git ls-files`.split("\n")

	# Gem dependencies
	#
  # SQL foreign keys
  s.add_runtime_dependency 'foreigner'
  # RPG Tools
  s.add_runtime_dependency 'rpg-tools'

	# Development Gem dependencies
	#
  s.add_runtime_dependency 'rails', '>= 3.1.0.rc6'
	# Testing database
	s.add_development_dependency 'sqlite3-ruby'
	# Debugging
	if RUBY_VERSION < '1.9'
		s.add_development_dependency 'ruby-debug'
	end
	# Specs
	s.add_development_dependency 'rspec-rails'
	# Fixtures
	s.add_development_dependency 'factory_girl'
	# Population
	s.add_development_dependency 'forgery'
	# Integration testing
	s.add_development_dependency 'capybara'
end

