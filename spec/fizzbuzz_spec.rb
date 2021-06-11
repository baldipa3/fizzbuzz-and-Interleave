require "fizzbuzz"
require "spec_helper"

RSpec.describe "fizzbuzz" do
    
  context 'when is multiple of 3' do
    it 'returns fizz' do
      response = fizzbuzz(3)

      expect(response).to eq("fizz")
    end
  end

  context 'when is multiple of 5' do
    it 'return buzz' do
      response = fizzbuzz(10)
  
      expect(response).to eq("buzz")
    end
  end

  context 'when is multiple of 3 and 5' do
    it 'returns fizzbuzz' do
      response = fizzbuzz(15)

      expect(response).to eq("fizzbuzz")
    end
  end

  context 'When is not multiple of 3 and 5' do
    it 'returns a number' do
      response = fizzbuzz(17)

      expect(response).to be(17)
    end
  end
end