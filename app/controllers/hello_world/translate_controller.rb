module HelloWorld
  class TranslateController < ApplicationController
    def say_hello
      render json: { message: SendHelloWorld.by_configured_language }, status: :ok
    end
  end
end
