class Raindrops
  def self.convert(num)
    translation = []
    translation << "Pling" if num % 3 == 0
    translation << "Plang" if num % 5 == 0
    translation << "Plong" if num % 7 == 0
    return translation.join('') unless translation.empty?
    return num.to_s
  end
end