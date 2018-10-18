require "./lib/code_kata_2.rb"
require 'test_helper'

class TestCodeKata2 < Minitest::Test
    def test_1
        result = CodeKata2.adds_up_to_k([1,2],3)
        assert_equal(true, result)
    end

    def test_2
        result = CodeKata2.adds_up_to_k([4,5],3)
        assert_equal(false, result)
    end

    def test_3
        result = CodeKata2.adds_up_to_k([4,5],9)
        assert_equal(true, result)
    end

    def test_4
        result = CodeKata2.adds_up_to_k([1,2,3],3)
        assert_equal(true, result)
    end

    def test_5
        result = CodeKata2.adds_up_to_k([1,2,3],5)
        assert_equal(true, result)
    end

    def test_6
        result = CodeKata2.adds_up_to_k([1,2,3],6)
        assert_equal(false, result)
    end

    def test_7
        result = CodeKata2.adds_up_to_k([],0)
        assert_equal(false, result)
    end

    def test_8
        result = CodeKata2.adds_up_to_k([1,2,3,4,5,6],11)
        assert_equal(true, result)
    end

    def test_9
        result = CodeKata2.adds_up_to_k([1,2,3,4,5,6],12)
        assert_equal(false, result)
    end
end
