require 'spec_helper'

describe HelloWorld::SendHelloWorld do
  describe '.by_configured_language' do
    context 'when the configured language is Spanish' do
      let!(:spanish_response) { "hola mundo!" }

      before do
        HelloWorld.configure do |config|
          config.language = "espanol"
        end
      end

      it 'returns hello world! in Spanish' do
        expect(described_class.by_configured_language).to eq(spanish_response)
      end
    end

    context 'when the configured language is English or other' do
      let!(:english_response) { "hello world!" }

      before do
        HelloWorld.configure do |config|
          config.language = "english"
        end
      end

      it 'returns hello world! in English' do
        expect(described_class.by_configured_language).to eq(english_response)
      end
    end
  end
end
