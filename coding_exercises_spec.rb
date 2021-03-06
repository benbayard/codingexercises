require_relative 'coding_exercises.rb'

describe "Rolling Averages" do
  it "should have a method called 'rolling_average'" do
    CodingExercises.should respond_to :rolling_average
  end

  it "should return the average of the last 3 results" do
    arr = [1,2,3]
    CodingExercises.rolling_average(arr).should == 2
  end

  it "should return part of the array if array.count < 3" do
    arr=[4,10]
    CodingExercises.rolling_average(arr).should == 7
  end

  it "should return ONLY the last 3 results' average" do
    arr=[2,4,6,8]
    CodingExercises.rolling_average(arr).should == [3,4,5]
  end

  it "should return accurate results for a different n" do
    arr=[1,2,3,4,5,6,7,8,9,10]
    CodingExercises.rolling_average(arr,5).should == [3.5, 4, 4.5, 5, 5.5]
  end
end

describe "Sort" do
  it "should respond to 'sort'" do
    CodingExercises.should respond_to :sort
  end

  it "should return an array" do
    CodingExercises.sort([*0..5]).should be_an_instance_of Array
  end

  it "should sort small arrays" do
    arr = [3,2,4,5,1]
    CodingExercises.sort(arr).should == [1,2,3,4,5]
  end

  it "should sort an array of many values" do
    arr = [*0..50].shuffle
    CodingExercises.sort(arr).should == arr.sort
  end
  #because I felt that was all that was really necessary for testing
  #I added a little 'extra credit' to check and ensure that the
  #Array was full of integers!

  it "should return an StandardError, if the array contains something that is not an int" do
    arr = ["I", "Love", "Coding"]
    expect {CodingExcercises.sort(arr)}.should raise_error(StandardError)
  end

end
