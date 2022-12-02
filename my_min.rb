#phase 1
def my_min2(arr) # o(n ^ 2)
  # arr.each do |ele_1|
  #   arr.all? { |ele_2| ele_1 < ele_2 }
  #     return ele_1
  # end
  lowest = arr.first
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      if arr[j] < arr[i] && arr[j] < lowest
        lowest = arr[j]
      end
    end
  end
  lowest
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min2(list)  # =>  -5



#phase 1
def my_min(arr) # O(n)
  lowest = nil
  arr.each do |ele|
    if lowest == nil || ele < lowest
      lowest = ele
    end
  end
  lowest
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


#Phase 1
def largest_sub_sum(arr)
  new_arr = []

  arr.each_with_index do |ele, i|
    sub_arr = []
    (i+1..arr.length-1).each do |j|
      sub_arr += arr[i..j]
      new_arr << sub_arr.sum
      sub_arr = []
    end
  end
  return new_arr.max
end


# phase 2
# list = [2, 3, -6, 7, -6, 7]
# p largest_sub_sum(list) # => 8 (from [7, -6, 7])

def largest_sub_sum(arr)
    largest = 0
    current = 0

    i = 0
   

    while i < arr.length
        current += arr[i]
        if largest < current
            largest = current
        end
        if current < 0
          current = 0
        end
        i += 1
    end
    return largest
end

list = [2, 3, -6, 7, -6, 7]
p largest_sub_sum(list) # => 8 (from [7, -6, 7])