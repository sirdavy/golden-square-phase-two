# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


## 2. Design the Class Interface

class Todo
def initialize
@array = [] 
end

def add(text)
#add text to array
#return error if text is already in array
end

def view_list
#returns a list of todos
#returns list is empty
end

def remove
#removes text from list
#returns error if text is not present
end

end

## 3. Create Examples as Tests

task_for_week = Todo.new
task_for_week.add("Milk the cows.")
task_for_week.view => ["Milk the cows."]

task_for_week = Todo.new
task_for_week.add("Wash the car.")
task_for_week.add("Wash the car.") => "Todo already added."

task_for_week = Todo.new
task_for_week.add("Wash the car.")
task_for_week.remove("Play football") => "Todo not present."

task_for_week = Todo.new
task_for_week.view => "List is empty"


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


