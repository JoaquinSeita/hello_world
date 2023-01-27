require 'spec_helper'

describe DummyController, type: :controller do
  describe "routes for HelloWorld", :type => :routing do
    context 'when the configured base_namespace custom' do
      let!(:configured_namespace) { HelloWorld.config[:base_namespace] }

      it 'the route matches the configured namespace' do
        expect(post("/#{configured_namespace}/say_hello"))
          .to route_to("hello_world/translate#say_hello")
      end
    end
  end
end
