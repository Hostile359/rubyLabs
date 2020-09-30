class Converter
  def self.convert(value, scale1, scale2)
    case scale1
    when 'C'
      convert_from_c(value, scale2)
    when 'K'
      convert_from_k(value, scale2)
    when 'F'
      convert_from_f(value, scale2)
    end
  end

  def self.convert_from_c(value, scale)
    case scale
    when 'K'
      value + 273.15
    when 'F'
      value * 1.8 + 32
    end
  end

  def self.convert_from_k(value, scale)
    case scale
    when 'C'
      value - 273.15
    when 'F'
      value * 1.8 - 459.67
    end
  end

  def self.convert_from_f(value, scale)
    case scale
    when 'C'
      (value - 32) / 1.8
    when 'K'
      (value + 459.67) / 1.8
    end
  end
end
