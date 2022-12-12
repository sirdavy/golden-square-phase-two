# class DiaryEntry
  
#   def initialize(title, contents) # title, contents are strings
#   @title = title
#   @contents = contents
#   @furthest_point_read = 0
#   end

#   def title
#     # Returns the title as a string
#     return @title
#   end

#   def contents
#    return @contents  
#   end

#   def count_words
#    words.length
#   end

#   def reading_time(wpm) 
#     fail "Reading time muts be above zero" unless wpm.positive? 
#    # no need to turn this into an instance variable @wpm = wpm
#    # don't need to repeat this formula @contents.split(" ").length / @wpm 
#    # it's already created within the class. You can refer to that.
#   return  (count_words / wpm.to_f).ceil
#   end

#   def reading_chunk(wpm, minutes) 
#     words_we_can_read = wpm * minutes
#     start_from = @furthest_point_read
#     end_at = @furthest_point_read + words_we_can_read
#     word_list = words[start_from, end_at]
#     @furthest_point_read = end_at
#     return word_list.join(" ")
#   end
  
# private

# def words
#   return @contents.split(" ")
# end


#     #   @wpm = wpm
#   #   @minutes = minutes
#   #   counter = 0
#   #   x = (wpm -1)
#   #   while true do
#   #     if counter < @minutes
#   #       return @contents.split[(x - (@wpm - 1))..x].join(" ")
#   #       counter += 1
#   #       x + @wpm
#   #     else
#   #     end
#   #   end
#   # end
# end



#   # # 50wpm, 1m
#   #   # 200 words 50wpm 1 return first 50 words of string
#   #   @wpm = wpm
#   #   @minutes = minutes
#   #   counter = 0
#   #   x = (@wpm - 1)
#   #   while true do
#   #     if minutes < counter
#   #      return contents[(x - x)..x]     
#   #      x += wpm
#   #      counter += 1
#   #     else
#   #     end
#   #   end
#   # end
# # end


#     # `wpm` is an integer representing the number
#   # of words the user can read per minute
#     # `minutes` is an integer representing the
#  # number of minutes the user has to read
#     # Returns a string with a chunk of the contents that the user could read
#     # in the given number of minutes.
#     # If called again, `reading_chunk` should return the next chunk, skipping
#     # what has already been read, until the contents is fully read.
#     # The next call after that it should restart from the beginning.
  