require_relative "hello_world/version"
require 'hello_world/engine'

module HelloWorld
  @config = {
    language: "english",
    base_namespace: "hello_world"
  }

  def self.configure
    yield self
  end

  def self.language=(language)
    @config[:language] = language
  end

  def self.base_namespace=(base_namespace)
    @config[:base_namespace] = base_namespace
  end

  def self.config
    @config
  end
end
