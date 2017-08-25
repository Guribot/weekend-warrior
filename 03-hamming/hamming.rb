module Hamming
  def self.compute(string1, string2)
    number = 0
    if string1.length != string2.length
      raise ArgumentError.new("Strand inputs must be same length")
    end
    string1.chars.each_index do |i|
      if string1[i] != string2[i]
        number += 1
      end
    end
    return number
  end
end
