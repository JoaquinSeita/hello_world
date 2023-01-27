require_relative 'lib/hello_world/version'

Gem::Specification.new do |spec|
  spec.name = 'hello_world'
  spec.version = HelloWorld::VERSION
  spec.authors = ['JoaquinSeita']
  spec.email = ['joaquin.seita@widergy.com']

  spec.summary = 'A gem that returns hello world in different languages'
  spec.description = 'A gem that returns hello world in different languages, it can be English or Spanish'
  spec.homepage = 'https://github.com/JoaquinSeita/hello_world'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.2'

  spec.files = Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  spec.test_files = Dir['spec/**/*']

  spec.add_dependency 'rails', '< 6'

  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop', '~> 1.21'
  spec.add_development_dependency 'pg'
end
