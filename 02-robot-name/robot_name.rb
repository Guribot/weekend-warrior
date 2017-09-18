class Robot
  attr_reader :name
  LETTERS = ('A'..'Z').to_a
  NUMBERS = (0..9).to_a

  def initialize
    build_name
  end

  def build_name
    name_build = []
    2.times {name_build << LETTERS.sample}
    3.times {name_build << NUMBERS.sample}
    @name = name_build.join
  end

  def reset
    build_name
  end
end
