class Isogram
  def self.isogram?(input)
    frequencies = input.gsub(/(\W|\d)/, "")
                       .chars
                       .group_by{ |letter| letter.downcase }
                       .transform_values(&:size)
    
    frequencies.each_value do |value|
      break if value > 1
      true
    end
  end
end
