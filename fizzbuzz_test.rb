require 'test/unit'
require 'fizzbuzz'

class FizzBuzzTest < Test::Unit::TestCase
  def test_has_fizzbuzz_method
    fizzbuzz = FizzBuzz.new
    assert_respond_to  fizzbuzz, 'fizzbuzz?'
  end

  def test_fizzbuzz_method_requires_argument
    fizzbuzz = FizzBuzz.new
  
    assert_raises ArgumentError do
      fizzbuzz.fizzbuzz?
    end
  end

  def test_fizzbuzz_method_requires_integer_argument
    fizzbuzz = FizzBuzz.new

    assert_raises TypeError do
      fizzbuzz.fizzbuzz?("Wrong type")
    end
  end

  def test_fizzbuzz_methods_returns_a_string
    fizzbuzz = FizzBuzz.new

    assert_kind_of String, fizzbuzz.fizzbuzz?(5)
  end

  def test_fizzbuzz_method_returns_correct_string
    fizzbuzz = FizzBuzz.new

    assert_match /Fizz|Buzz|FizzBuzz/, fizzbuzz.fizzbuzz?(5)
  end

  def test_fizzbuzz_method_correctly_returns_fizz
    fizzbuzz = FizzBuzz.new

    correct = [3, 6, 12, 24, 48, 96]

    correct.each do |c|
      assert_equal "Fizz", fizzbuzz.fizzbuzz?(c)
    end
  end

  def test_fizzbuzz_method_incorrectly_returns_fizz
    fizzbuzz = FizzBuzz.new

    incorrect = [2, 8, 16,  25, 49, 97]

    incorrect.each do |i|
      assert_not_equal "Fizz", fizzbuzz.fizzbuzz?(i)
    end
  end

  def test_fizzbuzz_method_correctly_returns_buzz
    fizzbuzz = FizzBuzz.new

    correct = [5, 10, 20, 50, 100]

    correct.each do |c|
      assert_equal "Buzz", fizzbuzz.fizzbuzz?(c)
    end
  end

  def test_fizzbuzz_method_incorrectly_returns_buzz
    fizzbuzz = FizzBuzz.new

    incorrect = [2, 8, 16,  24, 49, 101]

    incorrect.each do |i|
      assert_not_equal "Buzz", fizzbuzz.fizzbuzz?(i)
    end
  end

  def test_fizzbuzz_method_correctly_returns_fizzbuzz
    fizzbuzz = FizzBuzz.new

    correct = [15, 30, 45, 60, 75, 90, 105]

    correct.each do |c|
      assert_equal "FizzBuzz", fizzbuzz.fizzbuzz?(c)
    end
  end

  def test_fizzbuzz_method_incorrectly_returns_fizzbuzz
    fizzbuzz = FizzBuzz.new

    incorrect = [3, 5, 24, 35, 67, 96, 100]

    incorrect.each do |i|
      assert_not_equal "FizzBuzz", fizzbuzz.fizzbuzz?(i)
    end
  end
end