def words(input)
  input = input.split(' ')
  count = Hash.new(0)
  input.each do |word|
    count[word] += 1
  end
  return count
end
