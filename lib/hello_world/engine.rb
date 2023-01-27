require 'rails'

module HelloWorld
  class Engine < ::Rails::Engine
    isolate_namespace HelloWorld

    initializer 'hello_world', before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount HelloWorld::Engine, at: "/#{HelloWorld.config[:base_namespace]}", as: 'hello_world'
      end

      unless app.root.to_s.match root.to_s
        config.paths['db/migrate'].expanded.each do |expanded_path|
          Rails.application.config.paths['db/migrate'] << expanded_path
        end
      end
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end
  end
end
