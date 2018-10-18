require './lib/code_kata_3.rb'
require 'test_helper'

class TestCodeKata3 < Minitest::Test
    def test_1
        kata = CodeKata3.new(strategy: NewArrayCreator.new, array: [1])
        result = kata.new_array
        assert_equal([1], result)
        kata.strategy = NewArrayCreatorWithoutDivision.new
        result = kata.new_array
        assert_equal([1], result)
    end

    def test_2
        kata = CodeKata3.new(strategy: NewArrayCreator.new, array: [1,2])
        result = kata.new_array
        assert_equal([2,1], result)
        kata.strategy = NewArrayCreatorWithoutDivision.new
        result = kata.new_array
        assert_equal([2,1], result)
    end

    def test_3
        kata = CodeKata3.new(strategy: NewArrayCreator.new, array: [1,2,3])
        result = kata.new_array
        assert_equal([6,3,2], result)
        kata.strategy = NewArrayCreatorWithoutDivision.new
        result = kata.new_array
        assert_equal([6,3,2], result)
    end

    def test_4
        kata = CodeKata3.new(strategy: NewArrayCreator.new, array: [1,2,3,4,5])
        result = kata.new_array
        assert_equal([120, 60, 40, 30, 24], result)
        kata.strategy = NewArrayCreatorWithoutDivision.new
        result = kata.new_array
        assert_equal([120, 60, 40, 30, 24], result)
    end

    def test_5
        kata = CodeKata3.new(strategy: NewArrayCreator.new, array: [1,2,1,2])
        result = kata.new_array
        assert_equal([4,2,4,2], result)
        kata.strategy = NewArrayCreatorWithoutDivision.new
        result = kata.new_array
        assert_equal([4,2,4,2], result)
    end
end
