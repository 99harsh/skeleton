require "./lib/code_kata_1.rb"
require 'test_helper'

class TestFizzBuzz < Minitest::Test

  def test_print_fizz_buzz_1
    result = FizzBuzz.print_fizz_buzz 1
    assert_equal("1", result)
  end

  def test_print_fizz_buzz_2
    result = FizzBuzz.print_fizz_buzz 2
    assert_equal("1,2", result)
  end

  def test_print_fizz_buzz_3
    result = FizzBuzz.print_fizz_buzz 3
    assert_equal("1,2,fizz", result)
  end

  def test_print_fizz_buzz_4
    result = FizzBuzz.print_fizz_buzz 4
    assert_equal("1,2,fizz,4", result)
  end

  def test_print_fizz_buzz_5
    result = FizzBuzz.print_fizz_buzz 5
    assert_equal("1,2,fizz,4,buzz", result)
  end

  def test_print_fizz_buzz_6
    result = FizzBuzz.print_fizz_buzz 10
    assert_equal("1,2,fizz,4,buzz,fizz,7,8,fizz,buzz", result)
  end

  def test_print_fizz_buzz_7
    result = FizzBuzz.print_fizz_buzz 15
    assert_equal("1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz", result)
  end

end
