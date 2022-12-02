#phase 1
def my_min2(arr)
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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list)  # =>  -5



#phase 2
def my_min(arr)
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
