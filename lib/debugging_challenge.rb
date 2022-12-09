def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub!(/\s/, '') #replaces blank spaces with no space
  # p text
  text.chars.each do |char|
    counter[char] += 1
  end
  # p counter
  # counter.to_a.sort_by { |k, v| v }[0][0]
  counter.to_a.sort_by { |k, v| v }.reverse![0][0] #.reverse! to order by descending rather than ascending
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")