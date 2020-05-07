class Acronym
  def self.abbreviate(phrase)
    phrase.split(/[^[[:word:]]']+/).map { |word| word.chars.first.upcase }.join()
  end
end

