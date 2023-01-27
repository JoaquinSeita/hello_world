require 'spec_helper'

describe HelloWorld::TranslateController do
  routes { HelloWorld::Engine.routes }

  describe '#say_hello' do
    context 'when the configured language is Spanish' do
      let!(:spanish_response) { { "message"=>"hola mundo!" } }

      before do
        HelloWorld.configure do |config|
          config.language = "espanol"
        end
        post :say_hello
      end

      it 'returns status ok' do
        expect(response).to have_http_status :ok
      end

      it 'returns hello world! in Spanish' do
        expect(response.parsed_body).to eq(spanish_response)
      end
    end

    context 'when the configured language is English or other' do
      let!(:english_response) { { "message"=>"hello world!" } }

      before do
        HelloWorld.configure do |config|
          config.language = "english"
        end
        post :say_hello
      end

      it 'returns status ok' do
        expect(response).to have_http_status :ok
      end

      it 'returns hello world! in English' do
        expect(response.parsed_body).to eq(english_response)
      end
    end
  end
end
