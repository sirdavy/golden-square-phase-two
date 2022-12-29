1. Describe the Problem
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

task_tracker(sentence) 
"TODO - wash the dog" => true
"Visit grandma" => false

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

task_tracker("TODO - milk the cow") =>  true
task_tracker("Feed the dog") => false
task_tracker("") => "You have not input anything."

4. Implement the Behaviour

