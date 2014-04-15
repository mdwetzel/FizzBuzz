class FizzBuzz
  def fizzbuzz?(num)
    raise TypeError unless num.class == Fixnum
    case 
      when num % 15    == 0 then "FizzBuzz"
      when num % 3      == 0 then "Fizz"
      when num % 5      == 0 then "Buzz"
      else num
    end
  end
end