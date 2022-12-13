def read_time(text)
  if text == ""
    return 0
  else
    time = (text.split.length.to_f / 201).floor(2)
  
      return time
  end
end

puts read_time("one " * 346)