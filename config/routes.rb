HelloWorld::Engine.routes.draw do
  post :say_hello, to: 'translate#say_hello'
end
