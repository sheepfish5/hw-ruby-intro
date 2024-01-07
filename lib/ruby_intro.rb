# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty? then
    return 0
  end
  total = 0
  arr.each do |elem|
    total += elem
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  new_arr = arr.sort
  return new_arr.length == 1 ? new_arr[-1] : new_arr[-1]+new_arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? or arr.length == 1
    return false
  end
  result = false
  arr.each_index do |i|
    arr.each_index do |j|
      if i != j and arr[i] + arr[j] == n
        result = true
      end
    end
  end
  result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase =~ /^\w.*/ and s.downcase =~ /^[^aeiou].*/
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # 判断二进制数
  if !(s =~ /^[01]+$/)
    return false
  end
  if s =~ /1[0]*00$/ or s =~ /^0+$/
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    if isbn == "" or price <= 0
      raise ArgumentError.new
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price
  def price_as_string
    "$%.2f" % @price
  end
end
