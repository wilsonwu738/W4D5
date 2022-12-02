#brute force

def bad_two_sum?(arr, target)
  arr.each_with_index do |ele, i|
    (i + 1..arr.length - 1).each do |j|
      if arr[i] + arr[j] == target
        return true
      end
    end
  end
  false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

#sorting
def okay_two_sum?(arr, target)
  #use .sort and then do the while loop similar to sub sum

end

