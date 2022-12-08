def task_tracker(text)
  fail "You have not input anything." if text.empty?
  text.include?("TODO")
end