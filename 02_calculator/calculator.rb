def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.inject(0) { |sum, num | sum += num  }
end

def multiply(*numbers)
  numbers.inject(1){|prod, num| prod = prod * num}
end

def power(a, b)
  a ** b
end

def factorial(n)
  return 0 if n == 0
  (1..n).inject(1){|prod,num| prod = prod * num}
end