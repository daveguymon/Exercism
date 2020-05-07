class Hamming
  def self.compute(s1, s2)
    raise ArgumentError.new() if s1.length != s2.length
    counter = 0;

    s1.chars.zip(s2.chars).each do |one, two|
      counter += 1 if one != two
    end

    counter
  end
end
