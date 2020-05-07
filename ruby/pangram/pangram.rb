class Pangram
  ALPHABET = ("abcdefghijklmnopqrstuvwxyz")

  def self.pangram?(sentence)
    sentence.downcase
            .gsub(/[^a-z]/,'')
            .chars
            .sort
            .uniq
            .join('').eql? ALPHABET 
  end
end