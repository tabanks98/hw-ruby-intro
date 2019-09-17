# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce 0, :+
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
    false
  else
    arr.combination(2).to_a.each do |couple|
      return true if sum(couple) == n
    end
  end
  return false
end

# Part 2

def hello(name)
  name = "Hello, " + name
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/.match(s) != nil
end

def binary_multiple_of_4? s
  if s == "0"
    s = "00"
  end
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
    format("$%2.2f", @price)
  end

end
