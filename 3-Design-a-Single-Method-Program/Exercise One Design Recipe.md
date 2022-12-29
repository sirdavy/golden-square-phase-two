1. Describe the Problem
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

'read_time' provides a reading time from a string
example_time = read_time(eg "It was the best of times, it was the words of times")
read_time: an integer representing minutes
method prints read time

# EXAMPLE

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

read_time(eg 200 words) => 1
read_time(eg 2,200 words) => 11
read_time(eg 12,200 words) => 61
read_time(eg 12,0200 words) => 601
read_time(eg 100 words) = 1 (rounding up)
read_time("") => 0
read_time(nil) throws an error

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
