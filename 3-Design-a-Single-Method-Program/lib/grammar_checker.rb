def grammar_checker(text)
  fail "You haven't input anything." if text.empty?

  has_cap = text.chr == text.chr.upcase
  has_punc = %w[? . !].include?(text[-1])

  if has_punc != true && has_cap != true
    return "You need to capitalise the sentence and end with punctuation."
  elsif has_cap != true
    return "You need to capitalise the sentence."
  elsif has_punc != true
    return "You need to end the sentence with punctuation."
  elsif has_cap && has_punc
    return "Grammar is fine."
  end
end

