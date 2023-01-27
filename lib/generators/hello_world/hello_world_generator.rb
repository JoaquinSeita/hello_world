require 'rails/generators/base'

module HelloWorld
  class HelloWorldGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../templates', __FILE__)
  
    def copy_initializer_file
      config_file = 'hello_world.rb'
      copy_file config_file, "config/initializers/#{config_file}"
    end
  end
end
