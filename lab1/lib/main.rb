require_relative 'converter'

class Main
  def self.main
    puts 'Enter temperature:'
    t = gets.to_f
    puts 'Enter scale 1 [C, K, F]:'
    scale1 = gets.chomp
    puts 'Enter scale 2 [C, K, F]:'
    scale2 = gets.chomp
    result = Converter.convert(t, scale1, scale2)
    puts "Result: #{result}"
  end
end

Main.main
