=begin
Given an array of integers, return a new array such that each element at index i of 
the new array is the product of all the numbers in the original array except the one at i.
For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. 
If our input was [3, 2, 1], the expected output would be [2, 3, 6].
Follow-up: what if you can't use division?
=end

#first created two methods that worked
#then refactored into strategy design pattern

class CodeKata3
    attr_accessor :strategy, :array
    
    def initialize(strategy: NewArrayCreator.new, array: [])
        @strategy = strategy
        @array = array
    end

    def new_array
        @strategy.new_array @array
    end
end

class NewArrayCreator
    def new_array arr
        product_of_all = arr.reduce(1,:*)
        arr.map { |i| product_of_all/i }
    end
end
  
class NewArrayCreatorWithoutDivision
    def new_array arr
        arr.map.with_index { |a,i| arr.reject.with_index{ |value, index| index == i }.reduce(1,:*) }
    end
end