class Matrix
  attr_accessor :rows, :columns

  def initialize(matx)
    self.rows = string_to_rows(matx)
    self.columns = string_to_rows(matx).transpose
  end

  private

  def string_to_rows(matx)
    matx.lines.map { |val| val.split.map(&:to_i) }
  end
end

