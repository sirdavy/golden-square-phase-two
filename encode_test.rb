def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
p cipher
  ciphertext_chars = plaintext.chars.map do |char|
    # (65 + cipher.find_index(char)).chr
    (65 + cipher.find_index(char)).chr
  end
  p ciphertext_chars
  puts ciphertext_chars.join
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")