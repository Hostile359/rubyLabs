require_relative 'statistics'
require 'csv'

class Main
  def self.main
    data = CSV.read('../resources/data.csv',
                    headers: true, converters: :numeric)
    data = data['Сальдо прибылей и убытков']
    stat = Statistics.new(data)
    puts "Max: #{stat.max}"
    puts "Min: #{stat.min}"
    puts "Avg: #{stat.avg}"
    puts "CSVar #{stat.c_s_var}"
  end
end

Main.main
