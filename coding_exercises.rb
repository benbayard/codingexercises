#!/usr/bin/env ruby
class CodingExercises
  def initialize
    return true
  end

  def self.rolling_average_bad(arr, n=3)
    #n is the number of times you want to calculate the
    #rolling average for!
    averages = []
    #if the count is less than or equal to n
    #just return the average of the array,
    #as an array
    return self.average(arr) if arr.count <= n
    #otherwise!! put the last n elements in an arrays
    final = arr.pop(n).reverse
    #for each in final, add it to the original array
    #then, calculate the new average
    until final.empty? do
      arr << final.pop
      averages << self.average(arr)
    end
    averages
  end

  def self.rolling_average(arr, n=3)
    #n is the number of times you want to calculate the
    #rolling average for!
    averages = []
    #if the count is less than or equal to n
    #just return the average of the array,
    #as an array
    return self.average(arr) if arr.count <= n
    #otherwise!! put the last n elements in an arrays
    final = arr.pop(n)
    #calculate the sum! of the first most recent results
    sum = self.sum(arr)
    until final.empty?
      arr.unshift final.shift
      sum += arr[0]
      averages << sum / (arr).count
    end
    averages
  end

  def self.speed_test
    start = Time.now
    10.times do |i|
      self.sort([*1..1000].shuffle)
    end
    p Time.now-start

    start = Time.now
    10.times do |i|
      [*1..440000].shuffle.sort()
    end
    p Time.now-start
  end

  def self.average(arr)
    #inject will add together the first 2 elements, return the sum
    #then add that sum to the next element
    self.sum(arr) / arr.count
  end

  def self.sum(arr)
    arr.inject{ |a, b| a + b }.to_f
  end

  def self.sort(arr)
    validate_array arr
    #since we are doing this recursively
    #we have to set up some type of recursion
    #in order to get the array to loop
    sorted=true
    while(sorted)
      sorted = false
      #a backwards forloop! But ruby style :)
      0.upto(arr.count-2) do |i|
        #if the first value is greater than the second,
        #swap them, using fancy ruby swapping :)
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          #it sets sorted to true to state that a
          #sort DID happen this go, so it needs to move on
          sorted = true
          #and then we loop through it all again!
        end
      end
      break unless sorted
    end
    arr
  end

  def self.validate_array(arr)
    arr.each {|a| raise StandardError, "The array contains non-integers" unless a.class==Fixnum}
  end
end
