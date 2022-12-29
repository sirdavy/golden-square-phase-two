def make_snippet(str)
  if str.split.length <= 5
    return str
  elsif
    array = str.split(' ') 
    return array[0..4].join(" ") + "..."
  end
end