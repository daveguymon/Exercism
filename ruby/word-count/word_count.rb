class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    @sentence.strip
             .downcase
             .gsub(/[^[[:word:]]']+/, ",")
             .gsub(/\B'\b|\b'\B/, "")
             .split(",")
             .group_by { |word| word }
             .transform_values(&:size)
  end
end