def fibs(num)
  fib_array = []
  i = 0
  while i < num
    if i == 0
      fib_array << 0
    elsif i == 1
      fib_array << 1
    else
      fib_array << fib_array[i - 2] + fib_array[i - 1]
    end
    i += 1
  end
  fib_array
end

# p fibs(8)

def fibs_rec(num, fib_array = [])
  if num == 1
    fib_array << 0
  elsif num == 2
    fib_array = fibs_rec(num - 1, fib_array)
    fib_array << 1
  else
    fib_array = fibs_rec(num - 1, fib_array)
    fib_array << fib_array[num - 3] + fib_array[num - 2]
  end
  fib_array
end

p fibs_rec(8)
