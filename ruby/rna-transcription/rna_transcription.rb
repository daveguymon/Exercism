class Complement
  NUCLEOTIDES = {:G => "C", :C => "G", :T => "A", :A => "U"}
  
  def self.of_dna(nuc)
    return '' if nuc.empty?
    complement = []
    nuc_array = nuc.split(//)
    nuc_array.each { |n| complement << NUCLEOTIDES[n.to_sym]  }
    output = complement.join()

    output
  end
end