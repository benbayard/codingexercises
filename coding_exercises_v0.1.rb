# Thank you for your willingness to work on these coding exercises. We hope you will do well and we look forward to seeing your solutions. 
#
# Feel free to write and submit tests for your solutions.
# 
# Below are three coding exercises that will help us see how you would approach various coding problems. Please feel free to return the the solutions
# with comments, notes, or multiple solutions. None of these exercises are intended to be deceptive or confusing. If anything is unclear please 
# contact us. The language is Ruby, but feel free to use any other language that you would prefer to use. The solution code will be executed so it
# should be valid syntax executable.
# 
# Enjoy and good luck!

# ------------------------------------
# 1. Rolling averages coding exercise:
# ------------------------------------

# Objective: Given the list of measurements, create a method that returns the average of the most recent 3 measurements.

averages = []
number = 3
measurements = [1,2,1,1.9,3,2,6]
average = nil

def rolling_average(...)
  # ...
  return average
end

# ------------------------------------
# 2. Sorting an array coding exercise:
# ------------------------------------

# Objective: Given a random array of integers, sort the array using recursion and then explain why this may or may not be the best way to sort an
# array, then provide an improved solution. Please provide the code for both solutions.

unsorted_array = [*0..50].shuffle
def sort(...)
   # ...
   return sorted_array
end

# ------------------------------------
# 3. Any two numbers that equal a number coding exercise:
# ------------------------------------

# Objective: Implement the "contains_sum" method to determine if any two integers in the list could sum the number. Please provide examples of
# different solutions if applicable. Feel free to document your process as you code.

list = [1, -1, 6, 9, 12, 62, 13, 27, 2, 33]
number = 32 # could be any number though
def contains_sum(list, number)
  # ...
end