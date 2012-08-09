class CodingExercises
  def initialize
    return true
  end

  def self.rolling_average(arr)
    #first we need to set up the array to be summed
    #if the array is less than 3 we will just run
    #the average of the whole array
    #otherwise, we will return the averages of the
    #last 3 (as in most recent)
    arr = arr.reverse[0..2] if arr.count >= 3
    #inject will add together the first 2 elements, return the sum
    #then add that sum to the next element
    arr.inject{ |a, b| a + b }.to_f / arr.count
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
