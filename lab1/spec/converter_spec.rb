require './lib/converter'

RSpec.describe Converter do
  describe '#converter' do
    context 'from C to F' do
      it { expect(Converter.convert(1.0, 'C', 'F').round(2)).to eq 33.8 }
    end

    context 'from C to K' do
      it { expect(Converter.convert(1.0, 'C', 'K').round(2)).to eq 274.15 }
    end

    context 'from K to C' do
      it { expect(Converter.convert(1.0, 'K', 'C').round(2)).to eq(-272.15) }
    end

    context 'from K to F' do
      it { expect(Converter.convert(1.0, 'K', 'F').round(2)).to eq(-457.87) }
    end

    context 'from F to C' do
      it { expect(Converter.convert(1.0, 'F', 'C').round(2)).to eq(-17.22) }
    end

    context 'from F to K' do
      it { expect(Converter.convert(1.0, 'F', 'K').round(2)).to eq 255.93 }
    end
  end
end
