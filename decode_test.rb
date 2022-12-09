
def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  p cipher
  plaintext_chars = ciphertext.chars.map do |char| 
    cipher[(char.ord - 65)]   
end
  puts plaintext_chars.join
end

decode("OCSAKACP", "peaches")
