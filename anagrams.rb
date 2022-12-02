


#phase 2
def second_anagram?(str_1, str_2)
  arr_2 = str_2.chars
  
  str_1.each_char do |char|
    if arr_2.index(char) != nil
      arr_2.delete(char)
    end
  end
  return false if arr_2.length != 0
  true
end

# a = "caa"
# b = "tac"

# p second_anagram?(a, b)

#phase 3

def third_anagram?(str_1, str_2)
  arr_1 = str_1.chars.sort.join("")
  arr_2 = str_2.chars.sort.join("")
  
  arr_1 == arr_2

end

a = "abcdefa"
b = "gfedabc"

p third_anagram?(a, b)
