class Series

  def initialize(str)
    @str = str.chars
  end

  def slices(length)
    raise ArgumentError if @str.length < length
    
    output = []

    @str.each_index do |index| 
      output << @str[index...index + length].join("")
    end

    output.reject { |val| val.length != length }
  end
end