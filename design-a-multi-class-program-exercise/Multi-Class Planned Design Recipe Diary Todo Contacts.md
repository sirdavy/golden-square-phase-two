# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

```ruby

class Diary

def initialize
# stores diary entries and todo entries
@diary_entries = []
@todo_entries = []
end

def add_diary(diary_entry)
# adds diary_entry to array. diary_entry is an instance of DiaryEntry
# returns nothing
end

def read_diary(diary_entry)
# returns specified entry
end

def read_all_diary
# returns all diary entries
end

def select_by_time(wpm, time)
# wpm and time are integers
# returns longest diary entry contents readable in time given
end

def add_todo(todo_entry)
# adds todo_entry to array. todo_entry is an instance of TodoEntry. 
# returns nothing
end

def todo_complete
# returns list of all complete todos
end

def todo_incomplete
# returns list of all incomplete todos
end

def list_numbers
# lists all telephone numbers found instances of DiaryEntry
end

end


class DiaryEntry

def initialize(title, contents)
# title and contents are both strings
#@title 
#@contents
end

def title
# returns title
end

def contents
# returns contents
end

def word_count
#returns number of words in contents
end
end


class TodoEntry

def initialize(task)
# task is a string
# @task
# @status
end

def task
# returns task
end

def done?
# returns boolean
end

def mark_done
# updates status
# returns nothing
end

end

```

## 3. Create Examples as Integration Tests


```ruby

EXAMPLE TESTS

#1
david_diary = Diary.new
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_2 = DiaryEntry.new('Tuesday', 'Ruby ' * 200)
entry_3 = DiaryEntry.new('Wednesday', 'Week ' * 300)
david_diary.add_diary(entry_1)
david_diary.add_diary(entry_2)
david_diary.add_diary(entry_3)
david_diary.read_all_diary # => [entry_1, entry_2, entry_3]

# 2
david_diary = Diary.new
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_2 = DiaryEntry.new('Tuesday', 'Ruby ' * 200)
entry_3 = DiaryEntry.new('Wednesday', 'Week ' * 300)
david_diary.add_diary(entry_1)
david_diary.add_diary(entry_2)
david_diary.add_diary(entry_3)
david_diary.read_diary(entry_2) # => [entry_2]

# 3
david_diary = Diary.new
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_2 = DiaryEntry.new('Tuesday', 'Ruby ' * 200)
entry_3 = DiaryEntry.new('Wednesday', 'Week ' * 300)
david_diary.add_diary(entry_1)
david_diary.add_diary(entry_2)
david_diary.add_diary(entry_3)
david_diary.select_by_time(83, 3) # => 'Ruby' * 200

# 4
david_diary = Diary.new
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_2 = DiaryEntry.new('Tuesday', 'Ruby ' * 200)
entry_3 = DiaryEntry.new('Wednesday', 'Week ' * 300)
david_diary.add_diary(entry_1)
david_diary.add_diary(entry_2)
david_diary.add_diary(entry_3)
todo_1 = TodoEntry.new('Wash the cat')
todo_2 = TodoEntry.new('Walk the cow')
todo_3 = TodoEntry.new('Milk the dog')
david_diary.add_todo(todo_1)
david_diary.add_todo(todo_2)
david_diary.add_todo(todo_3)
david_diary.todo_incomplete # => # => [todo_1, todo_2, todo_3]

# 5
david_diary = Diary.new
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_2 = DiaryEntry.new('Tuesday', 'Ruby ' * 200)
entry_3 = DiaryEntry.new('Wednesday', 'Week ' * 300)
david_diary.add_diary(entry_1)
david_diary.add_diary(entry_2)
david_diary.add_diary(entry_3)
todo_1 = TodoEntry.new('Wash the cat')
todo_2 = TodoEntry.new('Walk the cow')
todo_3 = TodoEntry.new('Milk the dog')
david_diary.add_todo(todo_1)
david_diary.add_todo(todo_2)
david_diary.add_todo(todo_3)
todo_1.mark_done
todo_3.mark_done
david_diary.todo_complete # => [todo_1, todo_3]


# 5
david_diary = Diary.new
entry_1 = DiaryEntry.new('Monday', ('Manic ' * 100) + '07968111111 ')
entry_2 = DiaryEntry.new('Tuesday', ('Ruby ' * 200) + '07968222222 ')
entry_3 = DiaryEntry.new('Wednesday', ('Week ' * 300) + '07968333333 ' + '07968444444 ')
david_diary.add_diary(entry_1)
david_diary.add_diary(entry_2)
david_diary.add_diary(entry_3)
david_diary.list_numbers # => ['07968111111', '07968222222', '07968333333', '07968444444']


```
## 4. Create Examples as Unit Tests

```ruby
# EXAMPLES

# 1
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_1.title # => 'Monday'

# 2
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_1.contents # => 'Manic ' * 100

# 3
entry_1 = DiaryEntry.new('Monday', 'Manic ' * 100)
entry_1.word_count # => 100

# 4
todo_1 = TodoEntry.new('Wash the cat')
todo_1.task # => 'Wash the cat'

# 5
todo_1 = TodoEntry.new('Wash the cat')
todo_1.done? # => false

# 6
todo_1 = TodoEntry.new('Wash the cat')
todo_1.mark_done
todo_1.done? # => true

# 7
david_diary = Diary.new

# 8
david_diary = Diary.new
david_diary.instance_variable_get(@diary_entries) # => []

# 9
david_diary = Diary.new
david_diary.instance_variable_get(@todo_entries) # => []

```


## 5. Implement the Behaviour


