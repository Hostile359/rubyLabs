require './lib/statistics'
require 'csv'

RSpec.describe Statistics do
  describe '#Statistics' do
    data = CSV.read('./resources/data.csv',
                    headers: true, converters: :numeric)
    data = data['Сальдо прибылей и убытков']
    context 'max' do
      stat = Statistics.new(data)
      it { expect(stat.max).to eq 15_758 }
    end

    context 'min' do
      stat = Statistics.new(data)
      it { expect(stat.min).to eq(-115) }
    end

    context 'avg' do
      stat = Statistics.new(data)
      it { expect(stat.avg).to eq 4862.84 }
    end

    context 'csvar' do
      stat = Statistics.new(data)
      it { expect(stat.c_s_var).to eq 19_046_527.39 }
    end
  end
end
