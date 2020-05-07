class ResistorColorDuo

  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value(colors)
    colors.take(2).map { |c| COLORS.find_index(c) }.join('').to_i
  end
end