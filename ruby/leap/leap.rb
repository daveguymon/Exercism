class Year
  def self.leap?(year)
    return false unless (year.modulo(4).zero? && year.modulo(100).nonzero?) unless year.modulo(400).zero?
    true
  end
end