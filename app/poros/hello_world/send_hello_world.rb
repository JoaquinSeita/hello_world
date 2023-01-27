module HelloWorld
  module SendHelloWorld
    def self.by_configured_language
      case HelloWorld.config[:language]
      when 'espanol'
        'hola mundo!'
      else
        'hello world!'
      end
    end
  end
end
