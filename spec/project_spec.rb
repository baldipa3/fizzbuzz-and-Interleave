RSpec.describe Model do
  describe 'method' do
    before do
      @model =  Model.new(args)
    end
    
    context 'method?' do

      it 'test arguments' do
        expect(@model.method(args)).to raise_error(ArgumentError)
      end
      
    end

  end
end