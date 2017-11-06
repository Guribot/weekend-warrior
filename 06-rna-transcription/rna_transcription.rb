require 'pry'

module Complement
  COMPLEMENTS = [
    {dna: 'G', rna: 'C'},
    {dna: 'C', rna: 'G'},
    {dna: 'T', rna: 'A'},
    {dna: 'A', rna: 'U'}
  ]

  def self.of_dna(string)
    output = ""
    string.chars.each do |nuc|
      unless ['G', 'C', 'T', 'A'].include? nuc
        raise(ArgumentError, "no")
      end
      output << dna_to_rna(nuc)
    end
    output
  end

  def self.of_rna(string)
    output = ""
    string.chars.each do |nuc|
      unless ['C', 'G', 'A', 'U'].include? nuc
        raise(ArgumentError, "no")
      end
      output << rna_to_dna(nuc)
    end
    output
  end

  private

  def self.dna_to_rna(dna)
    match = COMPLEMENTS.find { |nuc| nuc[:dna] == dna }
    match[:rna]
  end

  def self.rna_to_dna(rna)
    match = COMPLEMENTS.find { |nuc| nuc[:rna] == rna }
    match[:dna]
  end
end
