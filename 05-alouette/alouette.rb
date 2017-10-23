class Alouette
  @refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
  @end = "\nAlouette!\nAlouette!\nA-a-a-ah"
  @lines = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  def self.lines_for_verse(verse_num)
    return @lines[0..verse_num].map{|line| "Et #{line}!"}.reverse
  end

  def self.verse(verse_num)
    lines = lines_for_verse(verse_num)
    verse = ["Je te plumerai #{@lines[verse_num]}."]
    verse += lines
    return verse.map{ |line| "#{line}\n#{line}" }.join("\n") + @end
  end

  def self.sing
    song = @refrain
    @lines.count.times do |i|
      song += "\n\n" + verse(i) + "\n\n" + @refrain
    end
    return song
  end
end
