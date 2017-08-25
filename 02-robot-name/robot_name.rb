class Robot
  attr_reader :name
  LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".chars
  NUMBERS = "1234567890".chars

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
