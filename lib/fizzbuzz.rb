def is_divisible_by_three?(number)
  return (number % 3) == 0
end

def is_divisible_by_five?(number)
  return (number % 5) == 0
end

def fizzbuzz(number)
  raise "ERROR: Not an integer" unless number.instance_of?(Integer)

  if(is_divisible_by_three?(number) && is_divisible_by_five?(number)) 
    return "fizzbuzz"
  end

  if(is_divisible_by_three?(number))
    return "fizz"
  end

  if(is_divisible_by_five?(number))
    return "buzz"
  end

  return number.to_s
end